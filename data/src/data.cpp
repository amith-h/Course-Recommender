#include "../data/include/data.h"
#include <string>

#include <iostream>

namespace data {

Data::Data(const string& data_set_filename) {
    
    ifstream data_set_file(data_set_filename);
    string line;
    if (data_set_file.is_open()) {
        

        // first line contains the headings so ignore it
        getline(data_set_file, line);

        // read the data line by line
        while (getline(data_set_file, line)) {
            // create a stringstream of the line
            std::stringstream ss(line);
            string element;
            int col = 0;
            std::vector<int> subgrade;
            // extract each column's data
            while (getline(ss, element, ',')) {
                // depending on the column number, insert data into different vector
                if (col == 0) {
                   stringstream y(element);
                   int x = 0;
                   y >> x;
                   year.push_back(x);
                } else if (col == 1) {
                    term.push_back(element);
                } else if (col == 2) {
                    yearTerm.push_back(element);
                } else if (col == 3) {
                    subject.push_back(element);
                } else if (col == 4) {
                    stringstream a(element);
                    int t = 0;
                    a >> t;
                    number.push_back(t);
                } else if (col == 5) {
                    courseTitle.push_back(element);
                } else if (col == 6) {
                    schedType.push_back(element);
                } else if (col >= 7 && col <= 20) {
                    stringstream g(element);
                    int t2 = 0;
                    g >> t2;
                    subgrade.push_back(t2);
                    if (col == 20) {
                        grade.push_back(subgrade);
                        subgrade.clear();
                        subgrade.resize(0);
                    }
                } else if (col == 21) {
                    instructor.push_back(element);
                }
                
                col++;
            }
        }
    }
    
    
}






}
