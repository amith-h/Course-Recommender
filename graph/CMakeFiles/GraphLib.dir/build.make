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
include graph/CMakeFiles/GraphLib.dir/depend.make

# Include the progress variables for this target.
include graph/CMakeFiles/GraphLib.dir/progress.make

# Include the compile flags for this target's objects.
include graph/CMakeFiles/GraphLib.dir/flags.make

graph/CMakeFiles/GraphLib.dir/src/graph.cpp.o: graph/CMakeFiles/GraphLib.dir/flags.make
graph/CMakeFiles/GraphLib.dir/src/graph.cpp.o: graph/src/graph.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/amithh/Documents/Course-Recommender/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object graph/CMakeFiles/GraphLib.dir/src/graph.cpp.o"
	cd /Users/amithh/Documents/Course-Recommender/graph && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/GraphLib.dir/src/graph.cpp.o -c /Users/amithh/Documents/Course-Recommender/graph/src/graph.cpp

graph/CMakeFiles/GraphLib.dir/src/graph.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/GraphLib.dir/src/graph.cpp.i"
	cd /Users/amithh/Documents/Course-Recommender/graph && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/amithh/Documents/Course-Recommender/graph/src/graph.cpp > CMakeFiles/GraphLib.dir/src/graph.cpp.i

graph/CMakeFiles/GraphLib.dir/src/graph.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/GraphLib.dir/src/graph.cpp.s"
	cd /Users/amithh/Documents/Course-Recommender/graph && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/amithh/Documents/Course-Recommender/graph/src/graph.cpp -o CMakeFiles/GraphLib.dir/src/graph.cpp.s

# Object files for target GraphLib
GraphLib_OBJECTS = \
"CMakeFiles/GraphLib.dir/src/graph.cpp.o"

# External object files for target GraphLib
GraphLib_EXTERNAL_OBJECTS =

graph/libGraphLib.a: graph/CMakeFiles/GraphLib.dir/src/graph.cpp.o
graph/libGraphLib.a: graph/CMakeFiles/GraphLib.dir/build.make
graph/libGraphLib.a: graph/CMakeFiles/GraphLib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/amithh/Documents/Course-Recommender/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libGraphLib.a"
	cd /Users/amithh/Documents/Course-Recommender/graph && $(CMAKE_COMMAND) -P CMakeFiles/GraphLib.dir/cmake_clean_target.cmake
	cd /Users/amithh/Documents/Course-Recommender/graph && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/GraphLib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
graph/CMakeFiles/GraphLib.dir/build: graph/libGraphLib.a

.PHONY : graph/CMakeFiles/GraphLib.dir/build

graph/CMakeFiles/GraphLib.dir/clean:
	cd /Users/amithh/Documents/Course-Recommender/graph && $(CMAKE_COMMAND) -P CMakeFiles/GraphLib.dir/cmake_clean.cmake
.PHONY : graph/CMakeFiles/GraphLib.dir/clean

graph/CMakeFiles/GraphLib.dir/depend:
	cd /Users/amithh/Documents/Course-Recommender && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/amithh/Documents/Course-Recommender /Users/amithh/Documents/Course-Recommender/graph /Users/amithh/Documents/Course-Recommender /Users/amithh/Documents/Course-Recommender/graph /Users/amithh/Documents/Course-Recommender/graph/CMakeFiles/GraphLib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : graph/CMakeFiles/GraphLib.dir/depend

