
#include "catch2/catch.hpp"
#include "../dijkstra/include/dijkstra.h"
#include "../bfs/include/BFS.h"
#include "../graph/include/graph.h"
#include "../node/src/node.cpp"
#include "../data/src/data.cpp"


using namespace std;
using data::Data;
using node::Node;
using graph::Graph;

TEST_CASE("dijkstra simple") {

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

    std::vector<double> actual = dijkstra(g, n1);
    std::vector<double> actual2 = dijkstra(g, n2);

    std::vector<double> expected = {0, 0.25, 1};

    REQUIRE(actual == expected);

    
}

TEST_CASE("test dijkstra simple 2") {

Data d("../data/uiuc-gpa-dataset-2021sp.csv");
    std::vector<Node> test;

Node n1(d.getYearTerm(100), d.getSubject(100), d.getNumber(100), d.getTitle(100), d.getInstructor(100), d.getGrade(100));
test.push_back(n1);

Node n2(d.getYearTerm(200), d.getSubject(200), d.getNumber(200), d.getTitle(200), d.getInstructor(200), d.getGrade(200));
test.push_back(n2);

Graph g(test);

std::vector<double> actual = dijkstra(g, n2);
std::vector<double> expected = {0.25, 0};

REQUIRE(actual == expected);
    
}

//note: this test works just takes a long time to execute given the size and time complexity: let it run.
TEST_CASE("dijkstra can run on entire dataset") {

    std::vector<Node> test;

    Data d("../data/uiuc-gpa-dataset-2021sp.csv");

    for (int i = 0; i < 2148; i++) {
        test.push_back(Node(d.getYearTerm(i), d.getSubject(i), d.getNumber(i), d.getTitle(i), d.getInstructor(i), d.getGrade(i)));
    }

    Graph g(test);

    std::vector<double> output = dijkstra(g, test[0]);

    REQUIRE("runs");
}