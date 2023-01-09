## **README**

## Introduction
For my project, I decided to use Professor Wade's dataset, specifically his 'GPA' dataset which describes a class, semester, year, grade distribution, professor, schedule type, and name. In the project directory, This dataset can be found in the data subfolder of the project:

> "../data/uiuc-gpa-datasets.csv"

Moreover I have also broken down the base dataset into sections by year term (ex. spring-21). These datasets comprise of all classes in a given year term and are useful in testing, as well as ensuring that the graph is connected. These datasets are located in the data subfolder of the project at:

> "../data/uiuc-gpa-dataset-2021sp.csv"

NOTE: Since the main data set has over 56000 lines, I decided to treat the 2021-sp dataset as the "target" meaning any test involving the full dataset was performed using the "uiuc-gpa-dataset-2021sp.csv".

For the project, I decided to implement BFS as a simple traversal, Dijkstra as a complex traversal, and PageRank as the final, complex method. I also structured the project around TA Ben's CMAKE template. As such each component of the project exists in its own sub-directory that are stiched together through CMAKE. For example, the BFS header, cpp, tests, and main files as well as the corresponding CMakeLists.txt and Makefile would be located in:

> "../bfs/...

To enter into the subdirectory you would run:

   `cd bfs`     in the terminal. 


I also made subdirectories for the data class which parses the dataset, a node class which constructs an individual vertex from the data, and a graph class which constructs the graph from the data. 

The following sections go more in depth regarding compilation, algorithms, and tests. 

Note: Dijkstra has one test that will take a while to execute - it is not an infinite loop! Let it execute.

## First Time and Compilation

If it is ythe first time with the project run:

    chmod +x bake.sh
    chmod +x test.sh
    chmod +x run.sh
    

Then run `./bake.sh` to build the project as well as run make. This should generate the necessary makefiles needed to compile the project as well as build all the subdirectories in the project. 
After running `bake.sh`, you could run `make` in the terminal to recompile the project. Running make compiles both the objects as well as the test suite. 

To run the test suites, you could run `./test.sh` in the home directory. This will run a shell that runs all the test suites in each respective subdirectory. 
Otherwise you could `cd` into the directory of ythe choosing and run the test executable from there. For example if you just wanted to run the tests for the Graph class, you would `cd graph` and then run `./test-graph`. This syntax could be used for any component on the project. Each test executable should be in the form "test-directory_name" such as `test-bfs` or `test-node`.

You could also simply run `./run.sh` to run the bake and test scripts at once. 

To recap, if it is your first time, run the necessary chmod +x commands. Failure to do so would result in a`permission denied`error. Then you can run `./bake.sh` to build and make the project, `make` to compile, `./test.sh` to run the test suites,  `cd directory` `./test-directory` to run the test suite of any sub-directory, or `./run.sh` to run bake and test at once. 

If you find yourself running into an error regarding the sthece directory not being found, it is likely that a CMakeCache.txt has been accidentally pulled, as well as a deps folder. Please delete both the CMakeCache.txt as well as the deps folder and all its contents. These will be rebuilt with the proper source directories upon running the executables again. 


*NOTE: Any changes made to any CMakeLists.txt would require you to run `./bake.sh` again to rebuild the project.


## Data and Node

## **Data:**

As stated earlier, the dataset I am using is from Professor Wade's UIUC course dataset collection. I specifically am using his course GPA dataset. They can be found:

   [gpa-dataset](https://github.com/wadefagen/datasets/tree/master/gpa)
[all datasets](https://github.com/wadefagen/datasets)

The data is in the form:
| Year | Term | YearTerm | Subject | Number | Cthese Title | Sched Type | A+ | A | A- | B+ | B | B- | C+ | C | C- | D+ | D | D- | F | W | Primary Instructor |
| ---- | ---- | -------- | ------- | ------ | ------------ | ---------- | -- | - | -- | -- | - | -- | -- | - | -- | -- | - | -- | - | - | ------------------ |
| 2021 | Spring | 2021-sp | AAS | 100 | Intro Asian American Studies | OD | 14 | 9 | 0 | 2 | 2 | 0 | 0 | 0 | 1 | 1 | 0 | 1 | 0 | 0 | Boonsripaisal, Simon |
| ... |
| 2017 | Fall | 2017-fa | CS | 225 | Data Structures |  | 114 | 47 | 27 | 6 | 28 | 17 | 14 | 18 | 13 | 12 | 9 | 12 | 16 | 2 | Fagen-Ulmschnei, Wade A |
| 2017 | Fall | 2017-fa | CS | 225 | Data Structures |  | 121 | 40 | 27 | 20 | 29 | 16 | 14 | 24 | 4 | 12 | 14 | 16 | 14 | 4 | Fagen-Ulmschnei, Wade A |

(as taken from his github repository, linked above). 

There are separate entries for the year, term, year-term, subject, number, title, sched-type, grade distribution, and instructor.

In the data class subfolder, I parsed through and extracted the data, placing them into separate vectors. 
For example, the year term for a class would be found by accessing the yearTerm vector.

The data can be retrieved by constructing a data object. The constructor takes in the file location and parses the data. If you wanted to create a Data object in order to retrieve data from the 2021-sp file, you would do:

    Data d("data/uiuc-gpa-dataset-2021sp");
The data class also has getters for the information stored in the vectors, since the vectors themselves are in a private scope. For instance, if you wanted to access the year-term of a cthese in line 100 of the csv file, you would do:

    d.getYearTerm(100);
This will be useful when constructing Nodes, as I will detail further down.  Note, I used the `std::stoi` function in order to convert the year, number, and grade fields into integers which will simplify comparison. 

The data class is under `namepace data`. Therefore it could be called with `data::Data` or if `using data::Data` is declared in the heading of the file, simply calling `data` will do. 

NOTE: There are no tests in the data subfolder as I tested the getters and their accuracy in the Node test suite, which I explain below.


## Node

I also detailed a Node class. These nodes act as the Vertices of the Graph and contain information about a course's title, year-term, number, subject, instructor, and grade distribution.
For example, if the class you are looking to make a Node is CS 225 for Spring 2021, the corresponding fields would be:

    string yearTerm: "2021-sp"
    string subject: "CS"
    int number: 225
    string title: "Data Structures"
    string instructor: "Evans, Graham C"
    vector<int> grades: a vector of distributed grades according to data

The nodes have a default constructor as well as a constructor that takes in individual parameters. It is in the form:

    Node(yearTerm, subject, number, title, instructor, grades);


For example if you wanted to make a CS225 Node you would run:

    Node n225("2021-sp", "CS", 225, "Data Structures" "Evans, Graham C", grades);
where grades is a std::vector of ints that is either contains the grade data for the corresponding cthese. As such the grade dummy for 225 could look like:

    std::vector<int> grades = {30 ,326, 34, 28, 19, 21, 15, 24, 11, 15, 15, 6, 27, 0};

As always, be sure to initialize the vector before adding constructing the Node. 

You could also construct a Node straight from the data by utilizing the Data class. This is easier in that it constructs the Nodes without much thought since the same data is stored in vectors that have been parsed. You could create the same Node as detailed above by running:

    Data d("uiuc-gpa-datasets.csv");
    Node n225(d.getYearTerm(710), d.getSubject(710), d.getNumber(710), d.getTitle(710), d.getInstructor(710), d.getGrade(710));

The data also has Sched-Type and separate year and semester parameters but I felt year term was easier to work with, and schedule type wasn't significant.

The node class has an overloaded operator<<, operator==, and operator=.

The node class is under `namespace node`. As such, if you intend to use it, the heading of the file should declare `using namespace node;` or `using node::Node`. For all files that require a node, one of the two would be included as well as the necessary .h files. 

## Node Tests
I have provided simple tests in order to test the Node constructor, getters, and member functions. I also used the Node class to test the Data object through a more practical way. 
The first test case builds a Node class manually and tests the getters, as well as the calculateGrade() member function. 
The second test case builds a Node from the data and tests the same properties. 
The third tests if a Node could be constructed directly from the data. 

The node tests can be found in 

> /node/tests/tests.cpp

and can be run either in the main project folder with `./test.sh` or by:

    cd node
    ./test-node

Note, the file named "test.cpp" does not contain any tests and is in place for Catch2. 


## Graph

The header files are located in:

> graph/include/graph.h

The cpp file and function implementations can be found at:

> graph/src/graph.cpp



I implemented the graph as an adjacency matrix. This allows us to define weights as well as direction. The graph class supports an empty constructor as well as construction from a given vector of Nodes. the graph class represents a weighted, directed graph which I found helpful when writing the graph traversal algorithms.  Examples of both these forms are given in the test suite for the graph class. 

The graph is represented by a 2d vector of doubles, specifically `std::vector<std::vector<double>> adj;` 
As such, `adj[0][1] == 1/2;` indicates that the edge from the Node at 0 to the Node at 1 has weight 1/2. 

The graph has public member variables:

    std::vector<Node> vertexList;
    std::map<int,Node> vertexMap;
    std::map<Node,int> intMap;

The vertexList is a vector containing all the Nodes within the graph. The vertexList is the vector which is used in order to construct the graph.  As such, `vertexList[0]` represents the Node at 0 in the adjacency matrix. In order to be able to access the Node's position in the graph, as well as the Node at a certain position, I implemented the vertexMap and intMap. 
The vertexMap maps an int to a Node and is used when you want to the Node at a certain position, while the intMap maps a Node to an int and is used when you want to know where a certain Node is within the graph. 

For example, `vertexMap[0] ` refers to the Vertex at `adj[0][]` while `intMap[Node]` refers to the index i such that `vertexList[i] == Node`. 

I implemented an `addVertex(Node u) ` function which adds the given Node to the vertexList, and corresponding maps, a `calculateEdge(Node u, Node v)` function which calculates the weight betIen the two Nodes and inputs them into the adjacency matrix accordingly, as well as a `_calculateEdge()` function which takes in no parameters and uses calculateEdge(u,v) as a helper function to calculate all the edges betIen every Node in the matrix. 

If you want to create an graph from the empty constructor, call `addVertex(Node n) ` on all the vertices you want in the graph, then run `buildGraph()` and `_calculateEdge()` to build the graph and populate all the edges. 

To make a graph from a vector of Nodes, simply do:

    std::vector<Node> vertices; //given vertices has already been populated
    Graph g(vertices);
    
   This should add all the vertices, build the graph, and populate all the edges. Examples of this could be found in the graph test-suite.

The graph class is defined in `namespace graph` and can be accessed accordingly. 

## Graph Tests

The graph test suite is located within the graph folder and can be found at:

> /graph/tests/tests.cpp

Note, the file named "test.cpp" does not contain any tests and is in place for Catch2. 

The graph class contains various tests, mostly to test the construction of the graph, the vertexList, vertexMap, and intMap, as well as whether or not the graph calculates the correct weight for each edge.

One test case was done on creating an empty graph and ensuring that the graph was constructed properly.
Another was done on creating a graph from a vector of nodes, and ensuring that was done properly, and that the member functions work as intended. 
Similarly, a test case was performed to construct a graph out of Nodes created from the data. 
Also includes a test-case for the edge case where all the Nodes are of the same title, as well as a test on the full data set "../uiuc-gpa-dataset-2021sp.csv" to see if a graph could be made consisting of all the Nodes from the dataset. 

The tests can be run with `./test.sh ` or by entering the graph subfolder and running `./test-graph`.

## BFS (Breadth First Search)

For the traversal algorithm I decided to implement BFS. The code can be found at:

> /bfs


or in the bfs subfolder. 

The header file and function declaration can be found in:

> bfs/include/BFS.h

while the cpp file and implementation can be found in:

> bfs/src/BFS.cpp

The algorithm has a signature `vector<Node> bfs(Graph g, node Start);` meaning it takes in a Graph and a starting Vertex as parameters and will output a vector of Nodes in the order that they Ire traversed. It stores the visited nodes in an `std::set` though the output is stored in a vector. I found it easier to perform lookup operations on a set, but found the sorting of sets to be incongruent to the actual order the Nodes were visited, thus, I pushed each visited node into a vector in order. 


## BFS Tests

The BFS tests can be found at:

> bfs/tests/tests.cpp

The test suite is relatively simple. It consists of 1 test case ensuring that given a small, sample graph, if the BFS output is correct given the starting node. 
The second ensures that if two nodes are unconnected, BFS only outputs the starting node. 
A test was also made to ensure that if a Node was inputted in the function parameter that wasn't in the graph, the output would be an empty vector.
Finally, a test was conducted indicating BFS could be run on the full dataset "../uiuc-gpa-dataset-2021sp.csv".

The tests are simple but robust as it tests that the output matches what is expected at multiple starting positions, which would result in different BFS traversals. The constructed graph was also intentionally designed to be slightly more complex in terms of edges to ensure the algorithm works as intended. 

Like the other sections, BFS tests could be run either by `./test.sh` or by 

    cd bfs
    ./test-bfs


## Dijkstra

Dijkstra's algorithm takes in a Graph g, and a Node n, and outputs a vector of doubles that consists of the distance from each Node to the input Node. For instance:

    distance[0] = distance (double) from the inputted weight to g.vertexList[0].

There is also a helper function `findVertex(std::vector<double> dist, std::set<Node> visited, Graph g);` that is declared with the Dijkstra method that I found useful in order to traverse Nodes that have not been visited and retrieve the position of the Node with the smallest distance.

The Dijkstra implementation could be found at:

    ../dijkstra/include/dijkstra.h
    ./dijkstra/src/dijkstra.cpp

  

## Dijkstra Tests

For Dijkstra, I only performed very simple tests. Two that made sure different graphs running the algorithm provided the correct output given a certain starting node. 

The tests can be found at:

> ../dijkstra/tests/tests.cpp

I also implemented a sanity check test to make sure it can run on the entire dataset. THIS TEST will TAKE SOME TIME TO EXECUTE but will pass. If you want to test other functions, comment it out - it is TEST_CASE(test dijkstra full dataset);


## PageRank
PageRank usually takes in a graph with a certain number of nodes and ranks them. In the algorithm, I used this ranking to get a cthese that is most similar to a given cthese (Node u). Instead of being redundant and creating a graph again with multiple edges, I thought it would be better to use the weighted edges in the graph as a degree of similarity. I looped through all the nodes in the graph and return the most similar one.

The PageRank implementation could be found at:

    ../pagerank/include/pagerank.h
    ../pagerank/src/pagerank.cpp

## PageRank Tests
For PageRank, I performed simple tests. I wrote tests that made sure the algorithm provided the correct node as the output.

The tests can be found at:

> ../pagerank/tests/tests.cpp