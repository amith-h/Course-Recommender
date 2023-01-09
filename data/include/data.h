#pragma once

#include <vector>
#include <string>
#include <sstream>
#include <fstream>

using std::string;
using std::ifstream;
using std::stringstream;

namespace data {

class Data {
    public:
    Data() {}

    Data(const string& data_set_filename);


        int getYear(int line) {
            return year[line];

        }

    std::string getTerm(int line) {
        return term[line];
    }

    std::string getYearTerm(int line) {
        return yearTerm[line];
    }


    std::string getSubject(int line) {
        return subject[line];
    }

     int getNumber(int line) {
        return number[line];
    }

    std::string getTitle(int line) {
        return courseTitle[line];
    }

    std::string getSchedType (int line) {
        return schedType[line];
    }

    std::vector<int> getGrade(int line) {
        return grade[line];
    }

    std::string getInstructor(int line) {
        return instructor[line];
    }


    private:
        std::vector<int> year;
        std::vector<string> term;
        std::vector<string> yearTerm;
        std::vector<string> subject;
        std::vector<int> number;
        std::vector<string> courseTitle;
        std::vector<string> schedType;
        std::vector<std::vector<int>> grade;
        std::vector<string> instructor;
};
}