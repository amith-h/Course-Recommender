#include "catch2/catch.hpp"
#include "../node/include/node.h"
#include "../data/src/data.cpp"
#include <vector>
#include <string>
#include <iostream>
#include <cmath>

using node::Node;
using data::Data;

TEST_CASE("test Node constructor with simple values") {

std::vector<int> gradeDummy = {14,9,0,2,2,0,0,0,1,1,0,1,0,0};
    //make a node object with the given fields
    Node n("2021-sp", "CS", 225, "Data Structures", "Carl Evans, Graham", gradeDummy);

     //test node member functions
     REQUIRE(n.getTitle() == "Data Structures");
     REQUIRE(n.getYearTerm() == "2021-sp");
     REQUIRE(n.getNumber() == 225);
     //ensure grade calculation is accurate
     REQUIRE(n.calculateGrade() == 3.61);
}

TEST_CASE("test Node from data") {

    //use the data class to initialize vectors of data
    Data d("../data/uiuc-gpa-dataset-2021sp.csv");

    
    //Construct node

    Node n(d.getYearTerm(710), d.getSubject(710), d.getNumber(710), d.getTitle(710), d.getInstructor(710), d.getGrade(710));
    
    //test node fields
    REQUIRE(n.getYearTerm() == "2021-sp");
    REQUIRE(n.getSubject() == "CS");
    REQUIRE(n.getNumber() == 225);
    REQUIRE(n.getTitle() == "Data Structures");
    //since gpa is a double, testing to make sure it is close to the rounded gpa value from the data
    REQUIRE(std::abs(3.32 - n.calculateGrade()) < 0.01);
    
}

TEST_CASE("test on full dataset") {

    Data d("../data/uiuc-gpa-dataset-2021sp.csv");

    for (int i = 0; i < 2148; i++) {
        Node(d.getYearTerm(i), d.getSubject(i), d.getNumber(i), d.getTitle(i), d.getInstructor(i), d.getGrade(i));
    }

    REQUIRE("don't crash or run out of memory");
}

