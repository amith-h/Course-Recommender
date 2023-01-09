
#include "catch2/catch.hpp"
#include "../bfs/include/BFS.h"
#include "../graph/src/graph.cpp"
#include "../node/src/node.cpp"
#include "../node/include/node.h"
#include "../data/src/data.cpp"
//#include "../bfs/main.cpp"

#include <vector>
#include <string>
#include <map>
#include <iostream>

using data::Data;
using node::Node;
using graph::Graph;


TEST_CASE("test bfs small") {

//test-case: tests if bfs on a small graph produces expected traversal order

//intitialize grades vector
std::vector<int> g1 = {30,326,34,28,19,21,15,24,11,15,15,6,27,0};
std::vector<int> g2 = {81,69,27,20,21,18,19,8,15,6,5,3,1,0};
std::vector<int> g3 = {39,40,29,21,31,37,25,22,26,3,0,0,5,0};
    
    //initialize vector to construct graph
    std::vector<Node> test;


    //create Vertices
    Node n1("2021-sp","CS", 225, "Data Structures", "Evans, Graham C", g1);
    test.push_back(n1);

    Node n2("2021-sp", "PHYS", 211, "University Physics: Mechanics", "Steltzer, Timothy J", g2);
    test.push_back(n2);

    Node n3("2020-sp", "PHYS", 212, "Univeristy Physics: Electricity and Magnetism", "Steltzer, Timothy J", g3);
    test.push_back(n3);

   
    //make graph
    Graph g(test);
    
    //initialize output of bfs function
    std::vector<Node> actual;
    std::vector<Node> actual_two;
    std::vector<Node> actual_three;
    
    //store outputs
    actual = bfs(g, n1);
    actual_two = bfs(g, n2);
    actual_three = bfs(g, n3);
    
    //initialize expected outputs
    std::vector<Node> expected = {n1, n2, n3};
    std::vector<Node> expected2 = {n2, n1, n3};
    std::vector<Node> expected3 = {n3, n2, n1};

    
    //check if what was actually outputted is correct
    REQUIRE(actual == expected);
    REQUIRE(actual_two == expected2);
    REQUIRE(actual_three == expected3);

    

}

TEST_CASE("test bfs disconnected") {

    //EDGECASE - tests that a graph of unconnected nodes does not traverse all nodes

    std::vector<Node> test;

    //Vertex 1 construction
    std::vector<int> g1 = {1,0,0,0,0,0,0,0,0,0,0,0};
    Node n1("2021-sp", "CS", 225, "Data Structures", "Evans, Graham C", g1);
    test.push_back(n1);

    //Vertex 2 construction
    std::vector<int> g2 = {0,0,0,0,0,1,0,0,0,0,0,0};
    Node n2("2010-fa", "ART", 102, "Drawing for Non-Majors", "Professor Name", g2);
    test.push_back(n2);

    //build graph
    Graph g(test);

    //perform bfs
    std::vector<Node> out1 = bfs(g, n1);
    std::vector<Node> out2 = bfs(g, n2);

    //correct output for each traversal
    std::vector<Node> expected1 = {n1};
    std::vector<Node> expected2 = {n2};

    //bfs traversal produced expected output
    REQUIRE(out1 == expected1);
    REQUIRE(out2 == expected2);

}

//tests to make sure that if a Node not in the graph is inputted, an empty vector is returned
TEST_CASE("bfs outputs empty vector if Node parameter is not in graph") {

//intitialize grades vector
std::vector<int> g1 = {30,326,34,28,19,21,15,24,11,15,15,6,27,0};
std::vector<int> g2 = {81,69,27,20,21,18,19,8,15,6,5,3,1,0};
std::vector<int> g3 = {39,40,29,21,31,37,25,22,26,3,0,0,5,0};
    
    //initialize vector to construct graph
    std::vector<Node> test;


    //create Vertices
    Node n1("2021-sp","CS", 225, "Data Structures", "Evans, Graham C", g1);
    test.push_back(n1);

    Node n2("2021-sp", "PHYS", 211, "University Physics: Mechanics", "Steltzer, Timothy J", g2);
    test.push_back(n2);

    Node n3("2020-sp", "PHYS", 212, "Univeristy Physics: Electricity and Magnetism", "Steltzer, Timothy J", g3);
    test.push_back(n3);

   
    //make graph
    Graph g(test);

    Node notInGraph("2021-sp", "MATH", 285, "Intro to Differential Equations", "Manfroi, Aldo", g1);
    std::vector<Node> empty;

    REQUIRE(bfs(g, notInGraph) == empty);
}


TEST_CASE("bfs can run on entire dataset") {

    std::vector<Node> test;

    Data d("../data/uiuc-gpa-dataset-2021sp.csv");

    for (int i = 0; i < 2148; i++) {
        test.push_back(Node(d.getYearTerm(i), d.getSubject(i), d.getNumber(i), d.getTitle(i), d.getInstructor(i), d.getGrade(i)));
    }

    Graph g(test);

    std::vector<Node> output = bfs(g, test[0]);

    REQUIRE("runs");
}