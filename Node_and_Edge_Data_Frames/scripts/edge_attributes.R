# Below is a list of all the edge attribute columns that will be automatically
# recognized within an edge data frame in DiagrammeR.
# 
# arrowhead — the arrow style at the head end (e.g, normal, dot)
# arrowsize — the scaling factor for the arrowhead and arrowtail
# arrowtail — the arrow style at the tail end (e.g, normal, dot)
# color — the stroke color; an X11 color or a hex code (add 2 digits for alpha)
# dir — the direction; either forward, back, both, or none
# fontcolor — choose an X11 color or provide a hex code (append 2 digits for alpha)
# fontname — the name of the font
# fontsize — the size of the font for the node label
# headport — a cardinal direction for where the arrowhead meets the node
# label — label text for the line between nodes
# minlen — minimum rank distance between head and tail
# penwidth — the thickness of the stroke for the arrow
# tailport — a cardinal direction for where the tail is emitted from the node
# tooltip — provide text here for an edge tooltip

# Update the code below to add edge attribute columns as follows:
# 
# - edges should be red
# - the arrowhead for edges should have a dotted style
# - edges should be labeled with the ID of the 'to' node

graph_x_edf <- create_edge_df(from = 10:1, to = 1:10)

print(graph_x_edf)
