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
include pagerank/CMakeFiles/test-pagerank.dir/depend.make

# Include the progress variables for this target.
include pagerank/CMakeFiles/test-pagerank.dir/progress.make

# Include the compile flags for this target's objects.
include pagerank/CMakeFiles/test-pagerank.dir/flags.make

pagerank/CMakeFiles/test-pagerank.dir/src/pagerank.cpp.o: pagerank/CMakeFiles/test-pagerank.dir/flags.make
pagerank/CMakeFiles/test-pagerank.dir/src/pagerank.cpp.o: pagerank/src/pagerank.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/amithh/Documents/Course-Recommender/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object pagerank/CMakeFiles/test-pagerank.dir/src/pagerank.cpp.o"
	cd /Users/amithh/Documents/Course-Recommender/pagerank && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test-pagerank.dir/src/pagerank.cpp.o -c /Users/amithh/Documents/Course-Recommender/pagerank/src/pagerank.cpp

pagerank/CMakeFiles/test-pagerank.dir/src/pagerank.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test-pagerank.dir/src/pagerank.cpp.i"
	cd /Users/amithh/Documents/Course-Recommender/pagerank && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/amithh/Documents/Course-Recommender/pagerank/src/pagerank.cpp > CMakeFiles/test-pagerank.dir/src/pagerank.cpp.i

pagerank/CMakeFiles/test-pagerank.dir/src/pagerank.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test-pagerank.dir/src/pagerank.cpp.s"
	cd /Users/amithh/Documents/Course-Recommender/pagerank && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/amithh/Documents/Course-Recommender/pagerank/src/pagerank.cpp -o CMakeFiles/test-pagerank.dir/src/pagerank.cpp.s

pagerank/CMakeFiles/test-pagerank.dir/tests/test.cpp.o: pagerank/CMakeFiles/test-pagerank.dir/flags.make
pagerank/CMakeFiles/test-pagerank.dir/tests/test.cpp.o: pagerank/tests/test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/amithh/Documents/Course-Recommender/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object pagerank/CMakeFiles/test-pagerank.dir/tests/test.cpp.o"
	cd /Users/amithh/Documents/Course-Recommender/pagerank && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test-pagerank.dir/tests/test.cpp.o -c /Users/amithh/Documents/Course-Recommender/pagerank/tests/test.cpp

pagerank/CMakeFiles/test-pagerank.dir/tests/test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test-pagerank.dir/tests/test.cpp.i"
	cd /Users/amithh/Documents/Course-Recommender/pagerank && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/amithh/Documents/Course-Recommender/pagerank/tests/test.cpp > CMakeFiles/test-pagerank.dir/tests/test.cpp.i

pagerank/CMakeFiles/test-pagerank.dir/tests/test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test-pagerank.dir/tests/test.cpp.s"
	cd /Users/amithh/Documents/Course-Recommender/pagerank && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/amithh/Documents/Course-Recommender/pagerank/tests/test.cpp -o CMakeFiles/test-pagerank.dir/tests/test.cpp.s

pagerank/CMakeFiles/test-pagerank.dir/tests/tests.cpp.o: pagerank/CMakeFiles/test-pagerank.dir/flags.make
pagerank/CMakeFiles/test-pagerank.dir/tests/tests.cpp.o: pagerank/tests/tests.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/amithh/Documents/Course-Recommender/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object pagerank/CMakeFiles/test-pagerank.dir/tests/tests.cpp.o"
	cd /Users/amithh/Documents/Course-Recommender/pagerank && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test-pagerank.dir/tests/tests.cpp.o -c /Users/amithh/Documents/Course-Recommender/pagerank/tests/tests.cpp

pagerank/CMakeFiles/test-pagerank.dir/tests/tests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test-pagerank.dir/tests/tests.cpp.i"
	cd /Users/amithh/Documents/Course-Recommender/pagerank && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/amithh/Documents/Course-Recommender/pagerank/tests/tests.cpp > CMakeFiles/test-pagerank.dir/tests/tests.cpp.i

pagerank/CMakeFiles/test-pagerank.dir/tests/tests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test-pagerank.dir/tests/tests.cpp.s"
	cd /Users/amithh/Documents/Course-Recommender/pagerank && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/amithh/Documents/Course-Recommender/pagerank/tests/tests.cpp -o CMakeFiles/test-pagerank.dir/tests/tests.cpp.s

# Object files for target test-pagerank
test__pagerank_OBJECTS = \
"CMakeFiles/test-pagerank.dir/src/pagerank.cpp.o" \
"CMakeFiles/test-pagerank.dir/tests/test.cpp.o" \
"CMakeFiles/test-pagerank.dir/tests/tests.cpp.o"

# External object files for target test-pagerank
test__pagerank_EXTERNAL_OBJECTS =

pagerank/test-pagerank: pagerank/CMakeFiles/test-pagerank.dir/src/pagerank.cpp.o
pagerank/test-pagerank: pagerank/CMakeFiles/test-pagerank.dir/tests/test.cpp.o
pagerank/test-pagerank: pagerank/CMakeFiles/test-pagerank.dir/tests/tests.cpp.o
pagerank/test-pagerank: pagerank/CMakeFiles/test-pagerank.dir/build.make
pagerank/test-pagerank: pagerank/libPageRankLib.a
pagerank/test-pagerank: pagerank/CMakeFiles/test-pagerank.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/amithh/Documents/Course-Recommender/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable test-pagerank"
	cd /Users/amithh/Documents/Course-Recommender/pagerank && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test-pagerank.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
pagerank/CMakeFiles/test-pagerank.dir/build: pagerank/test-pagerank

.PHONY : pagerank/CMakeFiles/test-pagerank.dir/build

pagerank/CMakeFiles/test-pagerank.dir/clean:
	cd /Users/amithh/Documents/Course-Recommender/pagerank && $(CMAKE_COMMAND) -P CMakeFiles/test-pagerank.dir/cmake_clean.cmake
.PHONY : pagerank/CMakeFiles/test-pagerank.dir/clean

pagerank/CMakeFiles/test-pagerank.dir/depend:
	cd /Users/amithh/Documents/Course-Recommender && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/amithh/Documents/Course-Recommender /Users/amithh/Documents/Course-Recommender/pagerank /Users/amithh/Documents/Course-Recommender /Users/amithh/Documents/Course-Recommender/pagerank /Users/amithh/Documents/Course-Recommender/pagerank/CMakeFiles/test-pagerank.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : pagerank/CMakeFiles/test-pagerank.dir/depend

