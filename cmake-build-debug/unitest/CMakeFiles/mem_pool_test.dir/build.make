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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/jack/miniob

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jack/miniob/cmake-build-debug

# Include any dependencies generated for this target.
include unitest/CMakeFiles/mem_pool_test.dir/depend.make

# Include the progress variables for this target.
include unitest/CMakeFiles/mem_pool_test.dir/progress.make

# Include the compile flags for this target's objects.
include unitest/CMakeFiles/mem_pool_test.dir/flags.make

unitest/CMakeFiles/mem_pool_test.dir/mem_pool_test.cpp.o: unitest/CMakeFiles/mem_pool_test.dir/flags.make
unitest/CMakeFiles/mem_pool_test.dir/mem_pool_test.cpp.o: ../unitest/mem_pool_test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jack/miniob/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object unitest/CMakeFiles/mem_pool_test.dir/mem_pool_test.cpp.o"
	cd /home/jack/miniob/cmake-build-debug/unitest && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mem_pool_test.dir/mem_pool_test.cpp.o -c /home/jack/miniob/unitest/mem_pool_test.cpp

unitest/CMakeFiles/mem_pool_test.dir/mem_pool_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mem_pool_test.dir/mem_pool_test.cpp.i"
	cd /home/jack/miniob/cmake-build-debug/unitest && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jack/miniob/unitest/mem_pool_test.cpp > CMakeFiles/mem_pool_test.dir/mem_pool_test.cpp.i

unitest/CMakeFiles/mem_pool_test.dir/mem_pool_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mem_pool_test.dir/mem_pool_test.cpp.s"
	cd /home/jack/miniob/cmake-build-debug/unitest && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jack/miniob/unitest/mem_pool_test.cpp -o CMakeFiles/mem_pool_test.dir/mem_pool_test.cpp.s

# Object files for target mem_pool_test
mem_pool_test_OBJECTS = \
"CMakeFiles/mem_pool_test.dir/mem_pool_test.cpp.o"

# External object files for target mem_pool_test
mem_pool_test_EXTERNAL_OBJECTS =

bin/mem_pool_test: unitest/CMakeFiles/mem_pool_test.dir/mem_pool_test.cpp.o
bin/mem_pool_test: unitest/CMakeFiles/mem_pool_test.dir/build.make
bin/mem_pool_test: lib/libobserver.a
bin/mem_pool_test: lib/libcommon.so.1.0.0
bin/mem_pool_test: unitest/CMakeFiles/mem_pool_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jack/miniob/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/mem_pool_test"
	cd /home/jack/miniob/cmake-build-debug/unitest && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mem_pool_test.dir/link.txt --verbose=$(VERBOSE)
	cd /home/jack/miniob/cmake-build-debug/unitest && /usr/bin/cmake -D TEST_TARGET=mem_pool_test -D TEST_EXECUTABLE=/home/jack/miniob/cmake-build-debug/bin/mem_pool_test -D TEST_EXECUTOR= -D TEST_WORKING_DIR=/home/jack/miniob/cmake-build-debug/unitest -D TEST_EXTRA_ARGS= -D TEST_PROPERTIES= -D TEST_PREFIX= -D TEST_SUFFIX= -D NO_PRETTY_TYPES=FALSE -D NO_PRETTY_VALUES=FALSE -D TEST_LIST=mem_pool_test_TESTS -D CTEST_FILE=/home/jack/miniob/cmake-build-debug/unitest/mem_pool_test[1]_tests.cmake -D TEST_DISCOVERY_TIMEOUT=5 -P /usr/share/cmake-3.16/Modules/GoogleTestAddTests.cmake

# Rule to build all files generated by this target.
unitest/CMakeFiles/mem_pool_test.dir/build: bin/mem_pool_test

.PHONY : unitest/CMakeFiles/mem_pool_test.dir/build

unitest/CMakeFiles/mem_pool_test.dir/clean:
	cd /home/jack/miniob/cmake-build-debug/unitest && $(CMAKE_COMMAND) -P CMakeFiles/mem_pool_test.dir/cmake_clean.cmake
.PHONY : unitest/CMakeFiles/mem_pool_test.dir/clean

unitest/CMakeFiles/mem_pool_test.dir/depend:
	cd /home/jack/miniob/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jack/miniob /home/jack/miniob/unitest /home/jack/miniob/cmake-build-debug /home/jack/miniob/cmake-build-debug/unitest /home/jack/miniob/cmake-build-debug/unitest/CMakeFiles/mem_pool_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : unitest/CMakeFiles/mem_pool_test.dir/depend

