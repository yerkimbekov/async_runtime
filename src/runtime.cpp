#include "ar/runtime.hpp"
#include "ar/io_executor.hpp"
#include "ar/logger.hpp"
#include "ar/profiler.hpp"
#include "ar/cpu_helper.hpp"

using namespace AsyncRuntime;


#define MAIN_WORK_GROUP "main"
#define MAIN_EXECUTOR_NAME "main"
#define IO_EXECUTOR_NAME "io"

Runtime Runtime::g_runtime;


Runtime::Runtime() : main_executor{nullptr}, io_executor{nullptr}, is_setup(false)
{
    Logger::s_logger.SetStd();
}


Runtime::~Runtime()
{
    Terminate();
}


void Runtime::Setup(const RuntimeOptions& _options)
{
    coroutine_counter = MakeMetricsCounter("coroutines_count", {});

    SetupWorkGroups(_options.work_groups_option);

    if(is_setup)
        return;

    CreateDefaultExecutors(_options.virtual_numa_nodes_count);
    is_setup = true;

    PROFILER_START();
}


void Runtime::SetupWorkGroups(const std::vector<WorkGroupOption>& _work_groups_option)
{
    work_groups_option.push_back({MAIN_WORK_GROUP,1.0,1.0, WG_PRIORITY_MEDIUM});

    if (work_groups_option.size() > MAX_GROUPS_COUNT)
        throw std::runtime_error("Work group size > " + std::to_string(MAX_GROUPS_COUNT));

    for(const auto &group : _work_groups_option) {
        if ( group.name != MAIN_WORK_GROUP) {
            work_groups_option.push_back(group);
        } else {
            throw std::runtime_error("Work group \"" + group.name + "\" already exist!");
        }
    }
}


void Runtime::Terminate()
{
    if(!is_setup)
        return;

    PROFILER_STOP();

    for(auto const& it : executors) {
        delete it.second;
    }

    executors.clear();

    is_setup = false;
}


void Runtime::CheckRuntime()
{
    assert(is_setup);
    assert(io_executor != nullptr);
    assert(main_executor != nullptr);
}


ObjectID Runtime::GetWorkGroup(const std::string &name) const {
    for (size_t i = 0; i < work_groups_option.size(); ++i) {
        if (work_groups_option[i].name == name)
            return i;
    }
    return INVALID_OBJECT_ID;
}


void Runtime::CreateDefaultExecutors(int virtual_numa_nodes_count)
{
    auto nodes = (virtual_numa_nodes_count == 0)? GetNumaNodes() : GetManualNumaNodes(virtual_numa_nodes_count);
    std::vector<Executor*> cpu_executors;

    for ( size_t i = 0; i < nodes.size(); ++i ) {
        auto executor = new Executor("CPUExecutor_" + std::to_string(i), nodes[i].cpus, work_groups_option);
        if (main_executor == nullptr) {
            main_executor = executor;
        }
        executors.insert(std::make_pair(i, executor));
        cpu_executors.push_back(executor);
    }

    if (main_executor == nullptr) {
        throw std::runtime_error("main executor not setup");
    }

    io_executor = CreateExecutor<IOExecutor>(IO_EXECUTOR_NAME);

    for (const auto executor : cpu_executors) {
        for (const auto &processor: executor->GetProcessors()) {
            io_executor->ThreadRegistration(processor->GetThreadId());
        }
    }

    io_executor->Run();
}

EntityTag Runtime::AddEntityTag(void *ptr) {
    auto tag = reinterpret_cast<std::uintptr_t>(ptr);
    auto executor = FetchFreeExecutor(kCPU_EXECUTOR);

    if (executor != nullptr) {
        std::lock_guard<std::mutex> lock(entities_mutex);
        executor->IncrementEntitiesCount();
        entities_map.insert(std::make_pair(tag, executor));
        return tag;
    } else {
        return INVALID_OBJECT_ID;
    }
}

void Runtime::DeleteEntityTag(EntityTag tag) {
    std::lock_guard<std::mutex> lock(entities_mutex);
    auto it = entities_map.find(tag);
    if (it != entities_map.end()) {
        it->second->DecrementEntitiesCount();
        entities_map.erase(it);
    }
}

IExecutor *Runtime::FetchExecutor(const EntityTag & tag) {
    std::lock_guard<std::mutex> lock(entities_mutex);
    auto it = entities_map.find(tag);
    if (it != entities_map.end()) {
        return it->second;
    } else {
        return nullptr;
    }
}

IExecutor *Runtime::FetchFreeExecutor(ExecutorType type) {
    std::lock_guard<std::mutex> lock(entities_mutex);
    IExecutor *min_executor = nullptr;
    int min = INT_MAX;

    for (auto & executor : executors) {
        if (executor.second->GetType() == type && min > executor.second->GetEntitiesCount()) {
            min = executor.second->GetEntitiesCount();
            min_executor = executor.second;
        }
    }

    return min_executor;
}

std::shared_ptr<Mon::Counter> Runtime::MakeMetricsCounter(const std::string & name, const std::map<std::string, std::string> &labels) {
    if (metricer) {
        return metricer->MakeCounter(name, labels);
    } else {
        return {};
    }
}

void Runtime::Post(Task *task)
{
    const auto& executor_state = task->GetExecutorState();
    if(executor_state.executor == nullptr) {
        auto executor = (executor_state.entity_tag != INVALID_OBJECT_ID) ? FetchExecutor(executor_state.entity_tag) : FetchFreeExecutor(kCPU_EXECUTOR);
        if (executor != nullptr) {
            executor->Post(task);
        } else {
            main_executor->Post(task);
        }
    }else{
        executor_state.executor->Post(task);
    }
}