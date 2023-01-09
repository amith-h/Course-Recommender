#include "../data/include/node.h"

#include <string>
#include <vector>

using namespace std;
using namespace data;

data::Node::Node() {
    name = "";
    yearTerm = "";
    number = 0;
    instructor = "";
    subject = "";
}

data::Node::Node(string _yearTerm, string _subject, int _number, string _title, string _instructor) {
    yearTerm = _yearTerm;
    subject = _subject;
    number = _number;
    title = _title;
    instructor = _instructor;
}


string data::Node::getName() {
    return name;
}

string data::Node::getInstructor() {
    return instructor;
}

int data::Node::getNumber() {
    return number;
}

string data::Node::getYearTerm() {
    return yearTerm;
}

string data::Node:: getSubject() {
    return subject;
}