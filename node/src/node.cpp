#include "../node/include/node.h"


#include <string>
#include <vector>

using namespace std;




namespace node{
    //constructor to make a Node given fields
Node::Node(string _yearTerm, string _subject, int _number, string _title, string _instructor, std::vector<int> _grades) {
    yearTerm = _yearTerm;
    subject = _subject;
    number = _number;
    title = _title;
    instructor = _instructor;
    grades = _grades;
}

//copy ctor
Node::Node(const Node &other) {
        yearTerm = other.yearTerm;
        number = other.number;
        title = other.title;
        instructor = other.instructor;
        subject = other.subject;
        grades = other.grades;
}

//ostream overload to print objects, prints in order of declaration below with no spaces
std::ostream&  operator<< (std::ostream &out,  const Node& node)  {
    //out << node.getName();
    out << node.getInstructor();
    out << node.getTitle();
    out << node.getNumber();
    out << node.getYearTerm();
    out << node.getSubject();

    return out;
  }
}




 