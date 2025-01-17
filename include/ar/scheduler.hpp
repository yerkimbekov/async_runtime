#ifndef AR_WORK_SCHEDULER_H
#define AR_WORK_SCHEDULER_H

#include "ar/task.hpp"
#include "ar/processor.hpp"

namespace AsyncRuntime {

    class Scheduler {
        typedef std::priority_queue<Task *, std::vector < Task * >, Task::LessThanByDelay>
        TasksPq;
    public:
        explicit Scheduler(std::vector<Processor*>  processors);
        ~Scheduler();

        void SetProcessors(const std::vector<Processor*>&  processors);

        void Post(Task *task);

        std::optional<Task *> Steal();
        [[nodiscard]] bool IsSteal() const;
    private:
        void ScheduleTask(Task *task);
        void SchedulerLoop();

        size_t notify_inc;
        ThreadExecutor scheduler_th;
        std::atomic_bool is_continue;
        WorkStealQueue<Task *> run_queue;
        TasksPq delayed_task;
        std::condition_variable delayed_task_cv;
        std::mutex delayed_task_mutex;
        std::mutex run_queue_mutex;
        std::mutex processors_mutex;
        std::vector<Processor *> processors;
    };
}
#endif //AR_WORK_SCHEDULER_H
