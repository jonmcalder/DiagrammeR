node_attributes <- grViz("
digraph node_attributes {

  # a 'graph' statement
  graph [overlap = TRUE]

  # several 'node' statements
  node [penwidth = 3, style = filled, shape = box, 
        color = red, fillcolor = salmon]
  A; B; C;

  node [shape = circle, 
        color = navy, fillcolor = steelblue]
  1; 2; 3; 4; 5; 6;

  # several 'edge' statements
  A->B A->1 A->2 
  B->C B->3 B->4 
  C->5 C->6
  1->3 2->4 3->5 4->6
}
")

print(node_attributes)