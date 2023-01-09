
#define PAGERANK_H

#include <string>
#include "graph.h"
using namespace graph;

class PageRank {
public:
    // Initialize the graph from a file.
    /* void InitGraph(const std::string& filename, const std::string& format);

    Graph* GetGraph() const {
        return graph_; 
    }
    Graph* GetGraphT() const { 
        return graph_t_;
    }
    std::vector<double>* Ranks() { 
        graph_->vertexMap; 
    } */

    Node getSimilar(Graph g, Node u);

    // Update the graph using the pull style algorithm.
    //std::vector<double> PullUpdate(double var);

    // Update the graph using the push style algorithm.    
    //std::vector<double> PushUpdate(double var);

private:
    Graph* graph_;      // original graph
    Graph* graph_t_;    // transpose graph
};

//if im outputting a node, test if node im outputting has the highest pagerank.