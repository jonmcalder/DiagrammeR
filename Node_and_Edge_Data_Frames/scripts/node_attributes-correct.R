# Below is a list of all the node attribute columns that will be automatically
# recognized within a node data frame in DiagrammeR.
# 
# color — provide an X11 or hexadecimal color (append 2 digits to hex for alpha)
# distortion — the node distortion for any shape = polygon
# fillcolor — provide an X11 or hexadecimal color (append 2 digits to hex for alpha)
# fixedsize — true or false
# fontcolor — provide an X11 or hexadecimal color (append 2 digits to hex for alpha)
# fontname — the name of the font
# fontsize — the size of the font for the node label
# height — the height of the node
# penwidth — the thickness of the stroke for the shape
# peripheries — the number of peripheries (essentially, additional shape outlines)
# shape — the node shape (e.g., ellipse, polygon, circle, etc.)
# sides — if shape = polygon, the number of sides can be provided here
# style — usually given the value filled if you'd like to fill a node with a color
# tooltip — provide text here for an unstyled browser tooltip
# width — the width of the node
# x — the x position of the node (requires graph attr layout = neato to use)
# y — the y position of the node (requires graph attr layout = neato to use)

# Update the code below to add columns which will inform the following node 
# attributes:
# 
# - nodes should be circles
# - nodes should have a red color and pink fill color
# - the font size for the node labels should be 15
# 
# Note that all non-numeric node attributes should be specified as string values

graph_x_ndf <- create_node_df(n = 10, type = "letter", label = letters[1:10],
                              shape = "circle", color = "red", fillcolor = "pink",
                              fontsize = 15)

print(graph_x_ndf)