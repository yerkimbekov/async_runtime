# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/df/Documents/install/CLion-2021.2.3/clion-2021.2.3/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/df/Documents/install/CLion-2021.2.3/clion-2021.2.3/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/df/Documents/workspace/async_runtime

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/df/Documents/workspace/async_runtime/cmake-build-debug

# Include any dependencies generated for this target.
include examples/CMakeFiles/runtime.dir/depend.make
# Include the progress variables for this target.
include examples/CMakeFiles/runtime.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/runtime.dir/flags.make

examples/CMakeFiles/runtime.dir/runtime.cpp.o: examples/CMakeFiles/runtime.dir/flags.make
examples/CMakeFiles/runtime.dir/runtime.cpp.o: ../examples/runtime.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/df/Documents/workspace/async_runtime/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/CMakeFiles/runtime.dir/runtime.cpp.o"
	cd /home/df/Documents/workspace/async_runtime/cmake-build-debug/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/runtime.dir/runtime.cpp.o -c /home/df/Documents/workspace/async_runtime/examples/runtime.cpp

examples/CMakeFiles/runtime.dir/runtime.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/runtime.dir/runtime.cpp.i"
	cd /home/df/Documents/workspace/async_runtime/cmake-build-debug/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/df/Documents/workspace/async_runtime/examples/runtime.cpp > CMakeFiles/runtime.dir/runtime.cpp.i

examples/CMakeFiles/runtime.dir/runtime.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/runtime.dir/runtime.cpp.s"
	cd /home/df/Documents/workspace/async_runtime/cmake-build-debug/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/df/Documents/workspace/async_runtime/examples/runtime.cpp -o CMakeFiles/runtime.dir/runtime.cpp.s

# Object files for target runtime
runtime_OBJECTS = \
"CMakeFiles/runtime.dir/runtime.cpp.o"

# External object files for target runtime
runtime_EXTERNAL_OBJECTS =

examples/runtime: examples/CMakeFiles/runtime.dir/runtime.cpp.o
examples/runtime: examples/CMakeFiles/runtime.dir/build.make
examples/runtime: libar.so
examples/runtime: /usr/lib64/libboost_thread.so.1.72.0
examples/runtime: /usr/lib64/libboost_chrono.so.1.72.0
examples/runtime: /usr/lib64/libboost_system.so.1.72.0
examples/runtime: /usr/lib64/libboost_regex.so.1.72.0
examples/runtime: /usr/lib64/libboost_context.so.1.72.0
examples/runtime: examples/CMakeFiles/runtime.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/df/Documents/workspace/async_runtime/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable runtime"
	cd /home/df/Documents/workspace/async_runtime/cmake-build-debug/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/runtime.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/runtime.dir/build: examples/runtime
.PHONY : examples/CMakeFiles/runtime.dir/build

examples/CMakeFiles/runtime.dir/clean:
	cd /home/df/Documents/workspace/async_runtime/cmake-build-debug/examples && $(CMAKE_COMMAND) -P CMakeFiles/runtime.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/runtime.dir/clean

examples/CMakeFiles/runtime.dir/depend:
	cd /home/df/Documents/workspace/async_runtime/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/df/Documents/workspace/async_runtime /home/df/Documents/workspace/async_runtime/examples /home/df/Documents/workspace/async_runtime/cmake-build-debug /home/df/Documents/workspace/async_runtime/cmake-build-debug/examples /home/df/Documents/workspace/async_runtime/cmake-build-debug/examples/CMakeFiles/runtime.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/runtime.dir/depend

