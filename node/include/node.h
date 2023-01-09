#pragma once
#include "../data/include/data.h"
#include <string>
#include <vector>

 
namespace node {

class Node {
    public:
    Node() {}
    Node(string _yearTerm, string _subject, int _number, string _title, string _instructor, std::vector<int> _grades);
    ~Node() {}
    Node(const Node &other);


 const Node & operator=(const Node& other) {
    if (this != &other) {
        //name = other.name;
        yearTerm = other.yearTerm;
        number = other.number;
        title = other.title;
        instructor = other.instructor;
        subject = other.subject;
        grades = other.grades;
    }
    return *this;
}

bool operator==(const Node& other) const {
   if (title == other.title) {
       return true;
   } else {
       return false;
   }
}

bool operator!= ( const Node& other) const {
    if (title != other.title) {
        return true;
    } else {
        return false;
    }
}

//gets instructor
string getInstructor () const {
    return instructor;
}

//gets number
int getNumber() const {
    return number;
}

//gets year term (i.e. "2021-sp")
string getYearTerm() const {
    return yearTerm;
}

//gets subject (i.e. "CS")
string getSubject() const {
    return subject;
}

//gets course name
string getTitle() const {
    return title;
}

//function to calculate average gpa given vector of grade distributions
double calculateGrade() {
    double totalNum = 0;
    for (int i = 0; i < grades.size(); i++) {
        totalNum = totalNum + grades[i];
    }

    double totalGrade = (4 * grades[0]) + (4*grades[1]) + (3.7 * grades[2]) + (3.3 * grades[3]) + (3 * grades[4]) + (2.7 * grades[5]) + (2.3 * grades[6]) + (2.0 * grades[7]) + (1.7 * grades[8]) + (1.3 * grades[9]) + (1.0 * grades[10]) + (.7 * grades[11]);


    return (totalGrade / totalNum);
}

 bool operator< (const Node& other) const {
        if (number < other.number) {
            return true;
        } else if (number > other.number) {
            return false;
        } else {
            return title.compare(other.title) < 0 ? true : false;
        }
 }


       
    
    private:
    string yearTerm;
    int number;
    string title;
    string instructor;
    string subject;
    std::vector<int> grades;
    bool visitedBFS;
    
};

}