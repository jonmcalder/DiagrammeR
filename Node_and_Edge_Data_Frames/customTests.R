# Put custom tests in this file.
      
      # Uncommenting the following line of code will disable
      # auto-detection of new variables and thus prevent swirl from
      # executing every command twice, which can slow things down.
      
      # AUTO_DETECT_NEWVAR <- FALSE
      
      # However, this means that you should detect user-created
      # variables when appropriate. The answer test, creates_new_var()
      # can be used for for the purpose, but it also re-evaluates the
      # expression which the user entered, so care must be taken.

test_node_attributes <- function() {
  try({
    t1 <- identical(graph_x_ndf$shape, rep("circle", 10))
    t2 <- identical(graph_x_ndf$color, rep("red", 10))
    t3 <- identical(graph_x_ndf$fillcolor, rep("pink", 10))
    t4 <- identical(graph_x_ndf$fontsize, rep(15, 10))
    ok <- all(t1, t2, t3, t4)
  }, silent = TRUE)
  exists('ok') && isTRUE(ok)
}