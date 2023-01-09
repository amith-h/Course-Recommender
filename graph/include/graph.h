#pragma once
 
#include "../node/include/node.h" 

#include <vector>
#include <map>



namespace graph {
class Graph {
    public:
    Graph();
    Graph(std::vector<node::Node> vertices);
    std::vector<std::vector<double>> adj;

    void addVertex(node::Node u);
    void buildGraph();
    void calculateEdge(node::Node u, node::Node v);
    void _calculateEdge();
    double getWeight(node::Node u, node::Node v);

    
    std::vector<node::Node> vertexList;
    std::map<int, node::Node> vertexMap;
    std::map<node::Node, int> intMap;
    
};
}
