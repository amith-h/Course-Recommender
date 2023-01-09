#include "../graph/include/graph.h"
#include <iostream>
#include <cmath>
using namespace std;
using data::Data;
using node::Node;
namespace graph {



//start with empty graph
Graph::Graph() {
    vertexList;
    intMap;
    vertexMap;
}

//construct a graph w/edges given an array of course nodes
Graph::Graph(std::vector<Node> input) {
    for (int i = 0; i < input.size(); i++) {
        vertexList.push_back(input[i]);
    }

    for (int i = 0; i < vertexList.size(); i++) {

        vertexMap[i] = vertexList[i];
        intMap[vertexList[i]] = i;
    }

    buildGraph();



    for (int i = 0; i < vertexList.size(); i++) {
        Node base = vertexList[i];
        for (int j = 0; j < vertexList.size(); j++) {
            if (i != j) {
                calculateEdge(base, vertexList[j]);
            }
        }
    }
    
}

//add a vertex to the list of vertices, at the moment do before building the graph
void Graph::addVertex(Node u) {
    vertexList.push_back(u);
    int size = vertexList.size() - 1;
    vertexMap[size] = u;
    intMap[u] = size;
}

void Graph::buildGraph() {
    for (int i = 0; i < vertexList.size(); i++) {
        vector<double> toAdd;
        for (int j = 0; j < vertexList.size(); j++) {
           toAdd.push_back(0);
        }
        adj.push_back(toAdd);
    }
}

//calculate edge between 2 nodes
void Graph::calculateEdge(Node u, Node v) {
   
    double weight = 1.0;

    if (u.getTitle() !=  v.getTitle()) {
        if (u.getSubject() == v.getSubject()) {
            weight = weight + 2;;
        }

        if (u.getYearTerm() == v.getYearTerm()) {
            weight++;
        }

        if (u.getInstructor() == v.getInstructor()) {
            weight++;
        }

        if (u.getNumber() == v.getNumber()) {
            weight++;
        }

       
        //if grade averages are within a 0.2 tolerance, deem them similar
        double uG = u.calculateGrade();
        double vG = v.calculateGrade();
        if (std::abs(uG - vG) < 0.2) {
            weight+=2;
        }
    }

double final_weight =  1 / weight;

adj[intMap[u]][intMap[v]] = final_weight;


}


//calculates all edges from all nodes in the graph
void Graph:: _calculateEdge() {
    node::Node base;
   for (int i = 0; i < vertexList.size(); i++) {
       base = vertexMap[i];

       for (int j = 0; j < vertexList.size(); j++) {
           if (i != j) {
               calculateEdge(base, vertexMap[j]);
           }
       }
   }
}


//returns the weight between two edges
double Graph::getWeight(Node u, Node v) {
    return adj[intMap[u]][intMap[v]];
}
}