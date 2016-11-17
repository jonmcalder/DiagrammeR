subgraph_rank <- grViz("
  digraph subgraph_rank {

      node [shape = circle,
      style = filled,
      color = grey]
      
      node [fillcolor = red]
      a
      
      node [fillcolor = green]
      b c
      
      node [fillcolor = orange]
      d e f g

      subgraph abc {a; b; c}

      edge [color = grey]
      a -> b a -> c
      b -> d b -> e
      c -> f c -> g
  }
")

print(subgraph_rank)