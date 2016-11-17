grViz("
digraph node_attributes {

  # several 'node' statements
  node [penwidth = 3, style = filled, shape = box, 
        color = red, fillcolor = salmon]
  A; B; C;

  node [shape = circle, color = navy, fillcolor = steelblue]
  1; 2; 3; 4; 5; 6;

  # several 'edge' statements
  edge [color = red, arrowhead = diamond]
  A->B B->C
  edge [color = black, arrowhead = box]
  A->1 A->2 B->3 B->4 C->5 C->6
  edge [color = blue, arrowhead = dot]
  1->3 2->4 3->5 4->6
}
")