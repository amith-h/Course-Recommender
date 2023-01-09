#!/bin/bash

# This is a shell script to run all tests sequentially.

TEST_NODE="test-node"
TEST_GRAPH="test-graph"
TEST_BFS="test-bfs"
TEST_DIJKSTRA="test-dijkstra"
TEST_PAGERANK="test-pagerank"

echo "Testing Graph"
cd graph/
./$TEST_GRAPH
cd ..

echo "Testing Node"
cd node/
./$TEST_NODE
cd ..

echo "Testing BFS"
cd bfs/
./$TEST_BFS
cd ..

echo "Testing Dijkstra"
cd dijkstra/
./$TEST_DIJKSTRA
cd ..

echo "Testing Pagerank"
cd pagerank/
./$TEST_PAGERANK
cd ..