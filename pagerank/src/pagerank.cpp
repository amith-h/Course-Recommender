#include "../pagerank/include/pagerank.h"
#include "../graph/src/graph.cpp"

Node Pagerank::getSimilar(Graph g, Node u) {
    map<node::Node, double> m;

    vector<node::Node> vertices = g.vertexList;

    for (node::Node vertex : vertices) {
        if (vertex.getTitle() != u.getTitle()) {
            double similarity = g.getWeight(u, vertex);
            m.insert({vertex, similarity});
        }
    }

    pair<node::Node, double> currentMin = make_pair(Node(), 100);
    for (auto currentEntry = m.begin(); currentEntry != m.end(); ++currentEntry) {
        if (currentEntry->second == currentMin.second) {
            int courseNum1 = currentEntry->first.getNumber();
            int courseNum2 = currentMin.first.getNumber();
            if (courseNum2 < courseNum1) {
                currentMin = make_pair(currentEntry->first, currentEntry->second);
            }
        } else if (currentEntry->second <= currentMin.second) {
            currentMin = make_pair(currentEntry->first, currentEntry->second);
        }
    }

    return currentMin.first;
    
}

