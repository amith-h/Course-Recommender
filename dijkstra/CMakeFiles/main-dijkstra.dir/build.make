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
include dijkstra/CMakeFiles/main-dijkstra.dir/depend.make

# Include the progress variables for this target.
include dijkstra/CMakeFiles/main-dijkstra.dir/progress.make

# Include the compile flags for this target's objects.
include dijkstra/CMakeFiles/main-dijkstra.dir/flags.make

dijkstra/CMakeFiles/main-dijkstra.dir/main.cpp.o: dijkstra/CMakeFiles/main-dijkstra.dir/flags.make
dijkstra/CMakeFiles/main-dijkstra.dir/main.cpp.o: dijkstra/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/amithh/Documents/Course-Recommender/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object dijkstra/CMakeFiles/main-dijkstra.dir/main.cpp.o"
	cd /Users/amithh/Documents/Course-Recommender/dijkstra && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main-dijkstra.dir/main.cpp.o -c /Users/amithh/Documents/Course-Recommender/dijkstra/main.cpp

dijkstra/CMakeFiles/main-dijkstra.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main-dijkstra.dir/main.cpp.i"
	cd /Users/amithh/Documents/Course-Recommender/dijkstra && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/amithh/Documents/Course-Recommender/dijkstra/main.cpp > CMakeFiles/main-dijkstra.dir/main.cpp.i

dijkstra/CMakeFiles/main-dijkstra.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main-dijkstra.dir/main.cpp.s"
	cd /Users/amithh/Documents/Course-Recommender/dijkstra && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/amithh/Documents/Course-Recommender/dijkstra/main.cpp -o CMakeFiles/main-dijkstra.dir/main.cpp.s

# Object files for target main-dijkstra
main__dijkstra_OBJECTS = \
"CMakeFiles/main-dijkstra.dir/main.cpp.o"

# External object files for target main-dijkstra
main__dijkstra_EXTERNAL_OBJECTS =

dijkstra/main-dijkstra: dijkstra/CMakeFiles/main-dijkstra.dir/main.cpp.o
dijkstra/main-dijkstra: dijkstra/CMakeFiles/main-dijkstra.dir/build.make
dijkstra/main-dijkstra: dijkstra/libDijkstraLib.a
dijkstra/main-dijkstra: dijkstra/CMakeFiles/main-dijkstra.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/amithh/Documents/Course-Recommender/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable main-dijkstra"
	cd /Users/amithh/Documents/Course-Recommender/dijkstra && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/main-dijkstra.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
dijkstra/CMakeFiles/main-dijkstra.dir/build: dijkstra/main-dijkstra

.PHONY : dijkstra/CMakeFiles/main-dijkstra.dir/build

dijkstra/CMakeFiles/main-dijkstra.dir/clean:
	cd /Users/amithh/Documents/Course-Recommender/dijkstra && $(CMAKE_COMMAND) -P CMakeFiles/main-dijkstra.dir/cmake_clean.cmake
.PHONY : dijkstra/CMakeFiles/main-dijkstra.dir/clean

dijkstra/CMakeFiles/main-dijkstra.dir/depend:
	cd /Users/amithh/Documents/Course-Recommender && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/amithh/Documents/Course-Recommender /Users/amithh/Documents/Course-Recommender/dijkstra /Users/amithh/Documents/Course-Recommender /Users/amithh/Documents/Course-Recommender/dijkstra /Users/amithh/Documents/Course-Recommender/dijkstra/CMakeFiles/main-dijkstra.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : dijkstra/CMakeFiles/main-dijkstra.dir/depend

