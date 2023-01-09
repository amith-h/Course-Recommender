#pragma once
#include "../graph/include/graph.h"
#include <vector>
#include <queue>

using graph::Graph;
using node::Node;


std::vector<Node> bfs(Graph g, Node u);