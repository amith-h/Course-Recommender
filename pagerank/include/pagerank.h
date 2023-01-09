#pragma once

#include "../node/include/node.h" 
#include "../graph/include/graph.h"

using namespace graph;
using namespace node;
using namespace std;

class Pagerank {
    public:
    // in graph g find a node most similar to node u
        Node getSimilar(Graph g, Node u);
};