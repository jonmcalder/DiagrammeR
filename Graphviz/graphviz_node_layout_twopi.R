node_layout_twopi <- grViz("
digraph node_layout_twopi {
      
      graph [layout = twopi]
      
      node [shape = circle,
      style = filled,
      color = grey]
      
      node [fillcolor = red]
      a
      
      node [fillcolor = green]
      b c d
      
      node [fillcolor = orange]
      
      edge [color = grey]
      a -> {b c d}
      b -> {e f g h}
      c -> {i j k l}
      d -> {m n o p}
      }")

print(node_layout_twopi)