# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

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
CMAKE_COMMAND = /usr/bin/cmake3

# The command to remove a file.
RM = /usr/bin/cmake3 -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/amithh/Documents/Course-Recommender

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/amithh/Documents/Course-Recommender

# Include any dependencies generated for this target.
include data/CMakeFiles/test-data.dir/depend.make

# Include the progress variables for this target.
include data/CMakeFiles/test-data.dir/progress.make

# Include the compile flags for this target's objects.
include data/CMakeFiles/test-data.dir/flags.make

data/CMakeFiles/test-data.dir/src/data.cpp.o: data/CMakeFiles/test-data.dir/flags.make
data/CMakeFiles/test-data.dir/src/data.cpp.o: data/src/data.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/amithh/Documents/Course-Recommender/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object data/CMakeFiles/test-data.dir/src/data.cpp.o"
	cd /Users/amithh/Documents/Course-Recommender/data && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test-data.dir/src/data.cpp.o -c /Users/amithh/Documents/Course-Recommender/data/src/data.cpp

data/CMakeFiles/test-data.dir/src/data.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test-data.dir/src/data.cpp.i"
	cd /Users/amithh/Documents/Course-Recommender/data && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/amithh/Documents/Course-Recommender/data/src/data.cpp > CMakeFiles/test-data.dir/src/data.cpp.i

data/CMakeFiles/test-data.dir/src/data.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test-data.dir/src/data.cpp.s"
	cd /Users/amithh/Documents/Course-Recommender/data && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/amithh/Documents/Course-Recommender/data/src/data.cpp -o CMakeFiles/test-data.dir/src/data.cpp.s

data/CMakeFiles/test-data.dir/src/node.cpp.o: data/CMakeFiles/test-data.dir/flags.make
data/CMakeFiles/test-data.dir/src/node.cpp.o: data/src/node.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/amithh/Documents/Course-Recommender/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object data/CMakeFiles/test-data.dir/src/node.cpp.o"
	cd /Users/amithh/Documents/Course-Recommender/data && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test-data.dir/src/node.cpp.o -c /Users/amithh/Documents/Course-Recommender/data/src/node.cpp

data/CMakeFiles/test-data.dir/src/node.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test-data.dir/src/node.cpp.i"
	cd /Users/amithh/Documents/Course-Recommender/data && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/amithh/Documents/Course-Recommender/data/src/node.cpp > CMakeFiles/test-data.dir/src/node.cpp.i

data/CMakeFiles/test-data.dir/src/node.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test-data.dir/src/node.cpp.s"
	cd /Users/amithh/Documents/Course-Recommender/data && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/amithh/Documents/Course-Recommender/data/src/node.cpp -o CMakeFiles/test-data.dir/src/node.cpp.s

data/CMakeFiles/test-data.dir/tests/test.cpp.o: data/CMakeFiles/test-data.dir/flags.make
data/CMakeFiles/test-data.dir/tests/test.cpp.o: data/tests/test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/amithh/Documents/Course-Recommender/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object data/CMakeFiles/test-data.dir/tests/test.cpp.o"
	cd /Users/amithh/Documents/Course-Recommender/data && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test-data.dir/tests/test.cpp.o -c /Users/amithh/Documents/Course-Recommender/data/tests/test.cpp

data/CMakeFiles/test-data.dir/tests/test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test-data.dir/tests/test.cpp.i"
	cd /Users/amithh/Documents/Course-Recommender/data && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/amithh/Documents/Course-Recommender/data/tests/test.cpp > CMakeFiles/test-data.dir/tests/test.cpp.i

data/CMakeFiles/test-data.dir/tests/test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test-data.dir/tests/test.cpp.s"
	cd /Users/amithh/Documents/Course-Recommender/data && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/amithh/Documents/Course-Recommender/data/tests/test.cpp -o CMakeFiles/test-data.dir/tests/test.cpp.s

# Object files for target test-data
test__data_OBJECTS = \
"CMakeFiles/test-data.dir/src/data.cpp.o" \
"CMakeFiles/test-data.dir/src/node.cpp.o" \
"CMakeFiles/test-data.dir/tests/test.cpp.o"

# External object files for target test-data
test__data_EXTERNAL_OBJECTS =

data/test-data: data/CMakeFiles/test-data.dir/src/data.cpp.o
data/test-data: data/CMakeFiles/test-data.dir/src/node.cpp.o
data/test-data: data/CMakeFiles/test-data.dir/tests/test.cpp.o
data/test-data: data/CMakeFiles/test-data.dir/build.make
data/test-data: data/libDataLib.a
data/test-data: data/CMakeFiles/test-data.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/amithh/Documents/Course-Recommender/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable test-data"
	cd /Users/amithh/Documents/Course-Recommender/data && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test-data.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
data/CMakeFiles/test-data.dir/build: data/test-data

.PHONY : data/CMakeFiles/test-data.dir/build

data/CMakeFiles/test-data.dir/clean:
	cd /Users/amithh/Documents/Course-Recommender/data && $(CMAKE_COMMAND) -P CMakeFiles/test-data.dir/cmake_clean.cmake
.PHONY : data/CMakeFiles/test-data.dir/clean

data/CMakeFiles/test-data.dir/depend:
	cd /Users/amithh/Documents/Course-Recommender && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/amithh/Documents/Course-Recommender /Users/amithh/Documents/Course-Recommender/data /Users/amithh/Documents/Course-Recommender /Users/amithh/Documents/Course-Recommender/data /Users/amithh/Documents/Course-Recommender/data/CMakeFiles/test-data.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : data/CMakeFiles/test-data.dir/depend

