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
CMAKE_BINARY_DIR = /home/df/Documents/workspace/async_runtime/cmake-build-debug-coverage

# Include any dependencies generated for this target.
include tests/CMakeFiles/CoroutineTest.dir/depend.make
# Include the progress variables for this target.
include tests/CMakeFiles/CoroutineTest.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/CoroutineTest.dir/flags.make

tests/CMakeFiles/CoroutineTest.dir/CoroutineTest.cpp.o: tests/CMakeFiles/CoroutineTest.dir/flags.make
tests/CMakeFiles/CoroutineTest.dir/CoroutineTest.cpp.o: ../tests/CoroutineTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/df/Documents/workspace/async_runtime/cmake-build-debug-coverage/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/CoroutineTest.dir/CoroutineTest.cpp.o"
	cd /home/df/Documents/workspace/async_runtime/cmake-build-debug-coverage/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CoroutineTest.dir/CoroutineTest.cpp.o -c /home/df/Documents/workspace/async_runtime/tests/CoroutineTest.cpp

tests/CMakeFiles/CoroutineTest.dir/CoroutineTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CoroutineTest.dir/CoroutineTest.cpp.i"
	cd /home/df/Documents/workspace/async_runtime/cmake-build-debug-coverage/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/df/Documents/workspace/async_runtime/tests/CoroutineTest.cpp > CMakeFiles/CoroutineTest.dir/CoroutineTest.cpp.i

tests/CMakeFiles/CoroutineTest.dir/CoroutineTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CoroutineTest.dir/CoroutineTest.cpp.s"
	cd /home/df/Documents/workspace/async_runtime/cmake-build-debug-coverage/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/df/Documents/workspace/async_runtime/tests/CoroutineTest.cpp -o CMakeFiles/CoroutineTest.dir/CoroutineTest.cpp.s

# Object files for target CoroutineTest
CoroutineTest_OBJECTS = \
"CMakeFiles/CoroutineTest.dir/CoroutineTest.cpp.o"

# External object files for target CoroutineTest
CoroutineTest_EXTERNAL_OBJECTS =

tests/CoroutineTest: tests/CMakeFiles/CoroutineTest.dir/CoroutineTest.cpp.o
tests/CoroutineTest: tests/CMakeFiles/CoroutineTest.dir/build.make
tests/CoroutineTest: libar.so
tests/CoroutineTest: /usr/lib64/libuv.so
tests/CoroutineTest: tests/CMakeFiles/CoroutineTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/df/Documents/workspace/async_runtime/cmake-build-debug-coverage/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable CoroutineTest"
	cd /home/df/Documents/workspace/async_runtime/cmake-build-debug-coverage/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/CoroutineTest.dir/link.txt --verbose=$(VERBOSE)
	cd /home/df/Documents/workspace/async_runtime/cmake-build-debug-coverage/tests && /home/df/Documents/install/CLion-2021.2.3/clion-2021.2.3/bin/cmake/linux/bin/cmake -D TEST_TARGET=CoroutineTest -D TECOMMON_EXECUTABLE=/home/df/Documents/workspace/async_runtime/cmake-build-debug-coverage/tests/CoroutineTest -D TECOMMON_EXECUTOR= -D TEST_WORKING_DIR=/home/df/Documents/workspace/async_runtime/cmake-build-debug-coverage/tests -D TEST_SPEC= -D TECOMMON_EXTRA_ARGS= -D TEST_PROPERTIES= -D TEST_PREFIX= -D TEST_SUFFIX= -D TEST_LIST=CoroutineTest_TESTS -D CTEST_FILE=/home/df/Documents/workspace/async_runtime/cmake-build-debug-coverage/tests/CoroutineTest_tests-b858cb2.cmake -P /home/df/Documents/workspace/async_runtime/tests/CatchAddTests.cmake

# Rule to build all files generated by this target.
tests/CMakeFiles/CoroutineTest.dir/build: tests/CoroutineTest
.PHONY : tests/CMakeFiles/CoroutineTest.dir/build

tests/CMakeFiles/CoroutineTest.dir/clean:
	cd /home/df/Documents/workspace/async_runtime/cmake-build-debug-coverage/tests && $(CMAKE_COMMAND) -P CMakeFiles/CoroutineTest.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/CoroutineTest.dir/clean

tests/CMakeFiles/CoroutineTest.dir/depend:
	cd /home/df/Documents/workspace/async_runtime/cmake-build-debug-coverage && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/df/Documents/workspace/async_runtime /home/df/Documents/workspace/async_runtime/tests /home/df/Documents/workspace/async_runtime/cmake-build-debug-coverage /home/df/Documents/workspace/async_runtime/cmake-build-debug-coverage/tests /home/df/Documents/workspace/async_runtime/cmake-build-debug-coverage/tests/CMakeFiles/CoroutineTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/CoroutineTest.dir/depend

