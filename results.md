## 225 Final Project Results

## Introduction
Using Professor Wade's "gpa" dataset as found on his Github repository (linked in the README as well as the Goals/Proposal), we wanted to use graphs as a way to map courses based on similarity, such that each Node on the graph represents a course,  and each edge between two courses (directed) has a weight that determines how similar the course is. The smaller the weight, the more similar. 

As such, we wanted to implement BFS, Dijkstra as a way to link two courses based on similarity, as well as PageRank to determine a ranking of courses based how similar they are.  

We detail below the success of these algorithms, as well as the success of the project as a whole.

After building the project, an output of all the tests could be done with `./test.sh` as a demonstration of success and a complete run of all our coded algorithms. 

NOTE:: DIJKSTRA has one test that will take a long time to execute - IT IS NOT AN INFINITE LOOP simply running a large dataset through a couple O(n) loops - give it a second and it will pass. 

## Data Parsing

The first part of the project was to successfully parse the data and extract the necessary information out of them to create Nodes that represent courses. 

We were lucky in that Professor Wade's datasets are all extremely organized and clean, so it required little processing. 
We used a simple ifstream as well as stringstream in order to traverse each line of the csv file line by line, as well as component by component as delineated by a comma. We were successfully able to extract the data and place them into respective private member vectors that were then accessed via getters to get a specific line of the vector.

The ability of the algorithm to parse and the getters to get, was tested in the Node class to success. 

The parsing algorithm could be found at:

> ../data/src/data.cpp

and the getters and method declarations at:

> ../data/include/data.h


## Graph and Node Creation
We were also successful in creating our graph and node classes. The Nodes are created either by mimicking the associated field in the data or pulling from the data itself. The ability to create these Nodes as well as extract information about them was successful as evident by the tests

Similarly, we were able to successfully implement a Graph class that reflected a directed adjacency matrix. The class was successful in storing the Nodes and correctly assigning edges. We found that, given our edge calculation criteria, all Nodes of the full dataset would be connected by year-term but we feel that that still conveys a connection by graph. 


The graphs and all associated functions were tested with mimicked Nodes, Nodes from the data, edge cases, and the full dataset with full success. 

Information on the node class could be found in:

    node/include/node.h
    node/src/node.cpp

and information on the graph class could be found in:

    graph/include/graph.h
    graph/src/graph.cpp

And tests could be found in the test.cpp files of the respective folders.



## BFS
We were also successful on doing BFS traversal. The algorithm took in a Graph and a starting node as parameters and outputted a vector of nodes in the order they were traversed. Our goal was to implement it at O(v + e) originally but, at the permission of the mentor during the mid project check in, now have the goal of O(v^2) as we used an adjacency matrix representation.

The tests covered edge cases, the full dataset, as well as ensuring nodes were traversed in the correct order, all successfully.

As usual, all information about the BFS implementation could be found in the BFS subfolder. 


## Dijkstra

With regards to Dijkstra, our goal was to have it input a single Node and graph and output a Node that is "recommended" based on shortest distance. The idea of that was similar however instead, Dijkstra takes in a graph and node, and outputs a vector of doubles of how far each node is with respect to the inputted node. Each index of the distance vector maps to the vertexList ->

    dist[0] is the distance from the inputted node to vertexList[0]
    
This implementation provides a similar function as the one we proposed, and used the shortest path algorithm in order to measure distances from a node. The base of dijkstra here can be applied to find which Node is of the shortest distance (disregarding itself which will always be 0.0). As with time complexity, it differs from our initial project goal, but is more in line with the updated proposal with approved time complexity from the mid project check in. 


Information on Dijkstra could be found: [all coded algorithms]

    dijkstra/include/dijkstra.h
    dijkstra/src/dijkstra.cpp
    dijkstra/tests/tests.cpp




## PageRank
PageRank usually takes in a graph with a certain number of nodes and ranks them. In our algorithm, we used this ranking to get a course that is most similar to a given course (Node u). Instead of being redundant and creating a graph again with multiple edges, we thought it would be better to use the weighted edges in our graph as a degree of similarity. We looped through all the nodes in the graph and return the most similar one.

The PageRank implementation could be found at:

    ../pagerank/include/pagerank.h
    ../pagerank/src/pagerank.cpp

For PageRank, we performed simple tests. We had a test that made sure the algorithm provided the correct node as the output. Running them shows success. 

The tests can be found at:

> ../pagerank/tests/tests.cpp



## Final Project Video
Our final project video can be found here: https://tinyurl.com/cs225finalproject (https://drive.google.com/drive/folders/1WK14iAy7DpFvFSA2F4jo7X3-7-fV9kqk?usp=sharing)



