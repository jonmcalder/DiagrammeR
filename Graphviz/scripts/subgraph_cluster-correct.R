subgraph_cluster <- grViz("
  digraph subgraph_cluster {

      node [shape = circle,
      style = filled,
      color = grey]
      
      node [fillcolor = red]
      a
      
      node [fillcolor = green]
      b c
      
      node [fillcolor = orange]
      d e f g

      subgraph cluster_1 {a; b; g}

      edge [color = grey]
      a -> b a -> c
      b -> d b -> e
      c -> f c -> g
  }
")

print(subgraph_cluster)