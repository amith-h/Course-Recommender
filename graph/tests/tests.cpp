#include "catch2/catch.hpp"
#include "../graph/include/graph.h"
#include "../node/src/node.cpp"
#include "../data/src/data.cpp"

#include <vector>
#include <map>

using data::Data;
using node::Node;
using graph::Graph;


TEST_CASE("test graph with default constructor") {
    Graph g;
    std::vector<int> gradeDummy = {1,0,0,0,0,0,0,0,0,0,0,0,0};
    Node n("2021-sp", "CS", 225, "Data Structures", "Carl Evans, Graham", gradeDummy);
    Node n2("2021-sp", "CS", 125, "Introduction to Computer Science", "Challen, Geoffrey", gradeDummy);
    Node n3("2021-sp", "CS", 173, "Discrete Structures", "Fleck, Margaret", gradeDummy);
    Node n4("2020-sp", "MSE", 201, "Phase and Phase Relations", "Cahill, David G", gradeDummy);
    
    g.addVertex(n);
    g.addVertex(n2);
    g.addVertex(n3);
    g.addVertex(n4);
    g.buildGraph();

    REQUIRE(g.vertexList.size() == 4);
    REQUIRE(g.adj[0][0] == 0);
    REQUIRE(g.adj[2][1] == 0);


    map<Node, int>::iterator lookup = g.intMap.find(n2);
    if (lookup != g.intMap.end()) {
       REQUIRE(g.intMap.at(n2) == 1);
    }
    //REQUIRE(g.intMap[n2] == 1);
//because of integer division, 1/6 and 1/3 round to 0 and 0.16 != 0.1666667, so we have these doubles to check our weights. 
double one = 1;
double three = 3;
double six = 6;

    //make sure weight at adj[0][1] == 1/6
    g.calculateEdge(n, n2);
    REQUIRE(g.adj[0][1] == one/six);


    //make sure weight between n3 -> n2 is 1/6
    g.calculateEdge(n3, n2);
    REQUIRE(g.adj[g.intMap[n3]][g.intMap[n2]] == one/six);

     //make sure weight between n4 -> n is 1/3
    g.calculateEdge(n4, n);
    REQUIRE(g.adj[g.intMap[n4]][g.intMap[n]] == one/three);

    REQUIRE(g.intMap[n3] == 2);

    


}

TEST_CASE("test graph with vector constructor") {

    std::vector<int> gradeDummy = {1,0,0,0,0,0,0,0,0,0,0,0,0};
    
    std::vector<Node> test;

    Node n1("2021-sp","CS", 225, "Data Structures", "Evans, Graham C", gradeDummy);
    test.push_back(n1);

    Node n2("2021-sp", "PHYS", 211, "University Physics: Mechanics", "Steltzer, Timothy J", gradeDummy);
    test.push_back(n2);

    Node n3("2021-sp", "CHEM", 104, "General Chemistry II", "Ray, Christian R", gradeDummy);
    test.push_back(n3);

    Node n4("2021-sp", "MSE", 201, "Phase and Phase Relations", "Cahill, David G", gradeDummy);
    test.push_back(n4);

    Graph g(test);
    
double one = 1;
double three = 3;
    REQUIRE(g.vertexList.size() == 4);
    REQUIRE(g.adj[g.intMap[n1]][g.intMap[n2]] == 0.25);
    REQUIRE(g.adj[g.intMap[n3]][g.intMap[n4]] == 0.25);
    int at = 0;

    map<Node, int>::iterator lookup = g.intMap.find(n4);
    if (lookup != g.intMap.end()) {
         at = g.intMap[n4];
    }

    REQUIRE(at == 3);

}

TEST_CASE("test graph from data") {

//initialize data object and member vectors

Data d("../data/uiuc-gpa-dataset-2021sp.csv");

//initialize vector of Vertices;
std::vector<Node> test;

Node n1(d.getYearTerm(100), d.getSubject(100), d.getNumber(100), d.getTitle(100), d.getInstructor(100), d.getGrade(100));
test.push_back(n1);

Node n2(d.getYearTerm(200), d.getSubject(200), d.getNumber(200), d.getTitle(200), d.getInstructor(200), d.getGrade(200));
test.push_back(n2);

Node n3(d.getYearTerm(300), d.getSubject(300), d.getNumber(300), d.getTitle(300), d.getInstructor(300), d.getGrade(300));
test.push_back(n3);

Node n4(d.getYearTerm(400), d.getSubject(400), d.getNumber(400), d.getTitle(400), d.getInstructor(400), d.getGrade(400));
test.push_back(n4);

Node n5(d.getYearTerm(500), d.getSubject(500), d.getNumber(500), d.getTitle(500), d.getInstructor(500), d.getGrade(500));
test.push_back(n5);

Node n6(d.getYearTerm(1200), d.getSubject(1200), d.getNumber(1200), d.getTitle(1200), d.getInstructor(1200), d.getGrade(1200));
test.push_back(n6);

//make graph
Graph g(test);

REQUIRE(g.adj[0][1] == 0.25);
REQUIRE(g.adj[1][5] == 0.5);

}


TEST_CASE("test nodes of same course are not weighted") {

    std::vector<Node> test;
    
    Data d("../data/uiuc-gpa-dataset-2021sp.csv");

//making 3 nodes referencing the different sections of the same course in the same year term. Since nodes of the same class are inherently more similar, our implementation restricts that a vertex be directed towards itself

    Node n1(d.getYearTerm(0), d.getSubject(0), d.getNumber(0), d.getTitle(0), d.getInstructor(0), d.getGrade(0));
    test.push_back(n1);

    Node n2(d.getYearTerm(1), d.getSubject(1), d.getNumber(1), d.getTitle(1), d.getInstructor(1), d.getGrade(1));
    test.push_back(n2);

    Node n3(d.getYearTerm(2), d.getSubject(2), d.getNumber(2), d.getTitle(2), d.getInstructor(2), d.getGrade(2));
    test.push_back(n3);

    Graph g(test);
    //only testing these two edges since the edge between n2 -> n1 and n3 -> n1 would be the same as n1 -> n2 and n1 -> n3
    REQUIRE(g.adj[g.intMap[n1]][g.intMap[n2]] == 1);
    REQUIRE(g.adj[g.intMap[n1]][g.intMap[n3]] == 1);
}




TEST_CASE("can make graph out of full dataset") {
    //initialize vertex Vector

    std::vector<Node> test;

    //initialize data
    Data d("../data/uiuc-gpa-dataset-2021sp.csv");

    //loops through all the data and makes a node for every line
    for (int i = 0; i < 2148; i++) {
        test.push_back(Node(d.getYearTerm(i), d.getSubject(i), d.getNumber(i), d.getTitle(i), d.getInstructor(i), d.getGrade(i)));
    }

    Graph g(test);

    REQUIRE("don't crash");
}


