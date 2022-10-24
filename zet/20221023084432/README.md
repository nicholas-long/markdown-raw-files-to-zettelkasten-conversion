# graph theory

- concept of `graph theory`
- graph = {verticies, edges}
- "node" = vertex
- order = number of verticies
- size = number of edges
- loop connects a vertex to itself
- graph types
  - complete - all nodes fully interconnected
  - empty - has 0 verticies
    - some definitions include a graph with 0 verticies
  - trivial graph - has 1 vertex with 0 edges, empty graph on 1 vertex
  - null graph - no verticies and no edges
- 2 edges are adjacent if they are connected to the same vertex "incident with the vertex"
- subgraph - graph that contains same verticies and edges
  - proper vs. improper - improper subgraph is exactly equal to the same graph
  - spanning subgraph
    - vertex set is equal
  - vertex-induced subgraph or just "induced subgraph"
    - verticies must be adjacent if they are adjacent in main graph
    - notation: include subset of verticies, all edges are implied to come with?
    - similar to copying zet directories and enriching
  - edge induced subgraph
    - all verticies must be incident with edges in the graph
    - notation: include subset of edges
    - has some edges
    - only verticies that are incident with those edges
  - notation of incident subgraphs - includes just a subset of edges or verticies; underlined variable with set in square brackets
- "walk"
  - sequence of verticies where consecutive ones are adjacent
- "trail" is a walk where you cannot traverse same edge multiple times. can do same vertex but leave it on different edges.
  - length - number of edges encountered, one less than the number of verticies in walk
  - open trail - ends at a different vertex than it started
  - closed trail - ends at same starting vertex
- my graph query language is about specifying a trail using set theory to filter the next nodes
- "path" - walk/trail of only unique verticies (also has to be unique edges then)
  - add a flag to graphquery to enable path mode and not visit verticies twice
- "circuit" - closed trail of length 3 or more
  - going back and forth along the same edge is not a circuit because a trail does not visit the same edge
- "cycle" possble circuit occuring within graph?

```
```

` zet/20221023084432/README.md `

# Related

- [20221009104752](/zet/20221009104752/README.md) stuff to research
- [20221006013313](/zet/20221006013313/README.md) zettelkasten
- [20221008054439](/zet/20221008054439/README.md) graph database
- https://www.youtube.com/c/WrathofMath
- <https://en.wikipedia.org/wiki/Graph_theory>
- [20221014025416](/zet/20221014025416/README.md) clone a subsection of a graph by tag boundaries
- [20221013221136](/zet/20221013221136/README.md) graph query language for zettelkasten
- [20221013221136](/zet/20221013221136/README.md) graph query language for zettelkasten
- [20221013221136](/zet/20221013221136/README.md) graph query language for zettelkasten
- [20221013221136](/zet/20221013221136/README.md) graph query language for zettelkasten

Tags:

    #idea
