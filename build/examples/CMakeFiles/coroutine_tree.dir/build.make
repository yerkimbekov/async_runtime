# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.16.2/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.16.2/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/dmitrijfedorov/Documents/workspace/streams_runtime

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/dmitrijfedorov/Documents/workspace/streams_runtime/build

# Include any dependencies generated for this target.
include examples/CMakeFiles/coroutine_tree.dir/depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/coroutine_tree.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/coroutine_tree.dir/flags.make

examples/CMakeFiles/coroutine_tree.dir/coroutine_tree.cpp.o: examples/CMakeFiles/coroutine_tree.dir/flags.make
examples/CMakeFiles/coroutine_tree.dir/coroutine_tree.cpp.o: ../examples/coroutine_tree.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dmitrijfedorov/Documents/workspace/streams_runtime/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/CMakeFiles/coroutine_tree.dir/coroutine_tree.cpp.o"
	cd /Users/dmitrijfedorov/Documents/workspace/streams_runtime/build/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/coroutine_tree.dir/coroutine_tree.cpp.o -c /Users/dmitrijfedorov/Documents/workspace/streams_runtime/examples/coroutine_tree.cpp

examples/CMakeFiles/coroutine_tree.dir/coroutine_tree.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/coroutine_tree.dir/coroutine_tree.cpp.i"
	cd /Users/dmitrijfedorov/Documents/workspace/streams_runtime/build/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dmitrijfedorov/Documents/workspace/streams_runtime/examples/coroutine_tree.cpp > CMakeFiles/coroutine_tree.dir/coroutine_tree.cpp.i

examples/CMakeFiles/coroutine_tree.dir/coroutine_tree.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/coroutine_tree.dir/coroutine_tree.cpp.s"
	cd /Users/dmitrijfedorov/Documents/workspace/streams_runtime/build/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dmitrijfedorov/Documents/workspace/streams_runtime/examples/coroutine_tree.cpp -o CMakeFiles/coroutine_tree.dir/coroutine_tree.cpp.s

# Object files for target coroutine_tree
coroutine_tree_OBJECTS = \
"CMakeFiles/coroutine_tree.dir/coroutine_tree.cpp.o"

# External object files for target coroutine_tree
coroutine_tree_EXTERNAL_OBJECTS =

examples/coroutine_tree: examples/CMakeFiles/coroutine_tree.dir/coroutine_tree.cpp.o
examples/coroutine_tree: examples/CMakeFiles/coroutine_tree.dir/build.make
examples/coroutine_tree: libar.dylib
examples/coroutine_tree: /usr/local/lib/libboost_system.dylib
examples/coroutine_tree: /usr/local/lib/libboost_regex.dylib
examples/coroutine_tree: /usr/local/lib/libboost_context.dylib
examples/coroutine_tree: /usr/local/lib/libboost_thread.dylib
examples/coroutine_tree: /usr/local/lib/libboost_chrono.dylib
examples/coroutine_tree: examples/CMakeFiles/coroutine_tree.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/dmitrijfedorov/Documents/workspace/streams_runtime/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable coroutine_tree"
	cd /Users/dmitrijfedorov/Documents/workspace/streams_runtime/build/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/coroutine_tree.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/coroutine_tree.dir/build: examples/coroutine_tree

.PHONY : examples/CMakeFiles/coroutine_tree.dir/build

examples/CMakeFiles/coroutine_tree.dir/clean:
	cd /Users/dmitrijfedorov/Documents/workspace/streams_runtime/build/examples && $(CMAKE_COMMAND) -P CMakeFiles/coroutine_tree.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/coroutine_tree.dir/clean

examples/CMakeFiles/coroutine_tree.dir/depend:
	cd /Users/dmitrijfedorov/Documents/workspace/streams_runtime/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/dmitrijfedorov/Documents/workspace/streams_runtime /Users/dmitrijfedorov/Documents/workspace/streams_runtime/examples /Users/dmitrijfedorov/Documents/workspace/streams_runtime/build /Users/dmitrijfedorov/Documents/workspace/streams_runtime/build/examples /Users/dmitrijfedorov/Documents/workspace/streams_runtime/build/examples/CMakeFiles/coroutine_tree.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/coroutine_tree.dir/depend
