#include "../bfs/include/BFS.h"
#include "../graph/include/graph.h"
#include "../node/include/node.h"

#include <vector>
#include <queue>
#include <set>
#include <algorithm>

using namespace std;
using data::Data;
using node::Node;
using graph::Graph;


//takes in a Graph and a Node within the graph, outputs a vector in Nodes in the order they were visited
std::vector<Node> bfs(Graph g, Node u) {

  if (std::find(g.vertexList.begin(), g.vertexList.end(), u) == g.vertexList.end()) {
    std::vector<Node> empty;
    return empty;
  }

    std::queue<Node> q;
    q.push(u);
    std::set<Node> visited;
    std::vector<Node> out;
    visited.insert(u);
    out.push_back(u);

    while (!q.empty()) {

        Node v = q.front();
        //v = q.front();
        q.pop();

     for (int i = 0; i < g.adj[g.intMap.at(v)].size(); i++)  {

         if (g.adj[g.intMap.at(v)][i] < 1 && visited.find(g.vertexMap[i]) == visited.end()) {

             q.push(g.vertexMap[i]);

             visited.insert(g.vertexMap[i]);
             out.push_back(g.vertexMap[i]);

         }
     } 
  }
  return out;
}
