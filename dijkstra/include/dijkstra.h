#pragma once

#include "../graph/include/graph.h"
#include <set>
#include <vector>


using data::Data;
using node::Node;
using graph::Graph;


std::vector<double> dijkstra (Graph g, Node source);

int findVertex(std::vector<double> dist, std::set<Node> visited, Graph g);