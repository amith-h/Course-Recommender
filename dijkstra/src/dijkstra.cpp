#include "../bfs/include/BFS.h"
#include "../graph/src/graph.cpp"
#include "../node/include/node.h"
#include "../dijkstra/include/dijkstra.h"

#include <vector>
#include <queue>
#include <set>
#include <algorithm>
#include <queue>
#include <limits>

using namespace std;
using data::Data;
using node::Node;
using graph::Graph;

std::vector<double> dijkstra (Graph g, Node source) {

    std::vector<double> dist;
    std::vector<Node> previous;
    std::priority_queue<std::pair<Node, int>> q;
    std::set<Node> visited;
    std::vector<Node> vis;
    int max = 1000000;

    for (int i = 0; i < g.vertexList.size(); i++) {
        //int max = std::numeric_limits<int>::max();
        dist.push_back(max);
    }


    dist[g.intMap[source]] = 0;

    for (int i = 0; i < g.vertexList.size(); i++) {
        int pos = findVertex(dist, visited, g);

        if (visited.find(g.vertexMap[i]) == visited.end()) {
            if (dist[pos] != max) {
                if (dist[pos] + g.adj[pos][i] < dist[i]) {
                    dist[i] = dist[pos] + g.adj[pos][i];
                }
            }
        }
    }
    return dist;
    
}

int findVertex(std::vector<double> dist, std::set<Node> visited, Graph g) {
    int min = 1000000;
    int minPos = 0;
    for (int i = 0; i < g.vertexList.size(); i++) {
        if (visited.find(g.vertexMap[i]) == visited.end()) {
            if (dist[i] <= min) {
                min = dist[i];
                minPos = i;
            }
        }
    }
    return minPos;
}