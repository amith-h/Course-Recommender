#pragma once
#include "data.h"
#include <string>
#include <vector>

 
namespace data {
class Node {
    public:

    Node();
    Node(string _yearTerm, string _subject, int _number, string _title, string _instructor);

    string getName();
    string getYearTerm();
    int getNumber();
    string getInstructor();
    string getSubject();

    bool operator<(const Node& other) const {
        if (number < other.number) {
            return true;
        }

        if (number > other.number) {
            return false;
        }
    }

    private:
    string name;
    string yearTerm;
    int number;
    string title;
    string instructor;
    string subject;
    bool visitedBFS;
    
};
}