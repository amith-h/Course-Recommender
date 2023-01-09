#include "catch2/catch.hpp"
// #include "../graph/src/graph.cpp"
#include "../node/src/node.cpp"
#include "../node/include/node.h"
#include "../data/src/data.cpp"
#include "../pagerank/include/pagerank.h"

#include <vector>
#include <string>
#include <map>
#include <iostream>

using data::Data;
using node::Node;
using graph::Graph;

TEST_CASE("Testing pagerank") {
    std::vector<int> gradeDummy = {1,0,0,0,0,0,0,0,0,0,0,0,0};
    std::vector<Node> test;

    Node u("2021-sp", "CS", 357, "Numerical Methods", "Silva, Mariana T", gradeDummy);

    Node n1("2021-sp", "CS", 225, "Data Structures", "Carl Evans, Graham", gradeDummy);
    Node n2("2021-sp", "CS", 125, "Introduction to Computer Science", "Challen, Geoffrey", gradeDummy);
    Node n3("2021-sp", "CS", 173, "Discrete Structures", "Fleck, Margaret", gradeDummy);
    Node n4("2020-sp", "MSE", 201, "Phase and Phase Relations", "Cahill, David G", gradeDummy);
    test.push_back(n1);
    test.push_back(n2);
    test.push_back(n3);
    test.push_back(n4);

    Graph g(test);

    Pagerank p;
    Node mostSimilar = p.getSimilar(g, u);

    REQUIRE(mostSimilar.getTitle() == "Data Structures");
}