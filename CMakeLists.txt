cmake_minimum_required(VERSION 2.8)

# Set Policies
if(POLICY CMP0048)
  cmake_policy(SET CMP0048 NEW)
endif()

if(POLICY CMP0023)
  cmake_policy(SET CMP0023 NEW)
endif()

if(POLICY CMP0079)
  cmake_policy(SET CMP0079 NEW)
endif()

##########################################################

# https://stackoverflow.com/questions/43862273/cmake-c-include-relative-to-base-directory
project(Railroad VERSION 1.0)
# enable_language(CUDA)
add_subdirectory(data)
add_subdirectory(node)
add_subdirectory(graph)
add_subdirectory(bfs)
add_subdirectory(dijkstra)
add_subdirectory(pagerank)