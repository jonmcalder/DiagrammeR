# Put custom tests in this file.
      
      # Uncommenting the following line of code will disable
      # auto-detection of new variables and thus prevent swirl from
      # executing every command twice, which can slow things down.
      
      # AUTO_DETECT_NEWVAR <- FALSE
      
      # However, this means that you should detect user-created
      # variables when appropriate. The answer test, creates_new_var()
      # can be used for for the purpose, but it also re-evaluates the
      # expression which the user entered, so care must be taken.

# Get the swirl state
getState <- function(){
  # Whenever swirl is running, its callback is at the top of its call stack.
  # Swirl's state, named e, is stored in the environment of the callback.
  environment(sys.function(1))$e
}

# Retrieve the log from swirl's state
getLog <- function(){
  getState()$log
}

submit_log <- function(){
  
  if(getState()$val == "Yes (will take you to the Google Form)"){
    
    pre_fill_link <- "https://docs.google.com/forms/d/e/1FAIpQLSe4kqVSoJVIAvZc-7uE3S6Vp0vf-XyTx9F_K0SU_vzNfQgCtA/viewform?entry.55270819"
    
    if(!grepl("=$", pre_fill_link)){
      pre_fill_link <- paste0(pre_fill_link, "=")
    }
    
    p <- function(x, p, f, l = length(x)){if(l < p){x <- c(x, rep(f, p - l))};x}
    
    temp <- tempfile()
    log_ <- getLog()
    nrow_ <- max(unlist(lapply(log_, length)))
    log_tbl <- data.frame(user = rep(log_$user, nrow_),
                          course_name = rep(log_$course_name, nrow_),
                          lesson_name = rep(log_$lesson_name, nrow_),
                          question_number = p(log_$question_number, nrow_, NA),
                          correct = p(log_$correct, nrow_, NA),
                          attempt = p(log_$attempt, nrow_, NA),
                          skipped = p(log_$skipped, nrow_, NA),
                          datetime = p(log_$datetime, nrow_, NA),
                          stringsAsFactors = FALSE)
    write.csv(log_tbl, file = temp, row.names = FALSE)
    encoded_log <- base64encode(temp)
    browseURL(paste0(pre_fill_link, encoded_log))
  }
}

test_node_shape <- function() {
  # Get e
  e <- get('e', parent.frame())
  # Test expression from user's script
  try({
    t1 <- grepl(pattern = "node \\[shape = circle, fontname = Helvetica\\]", e$expr[1])
    t2 <- !grepl(pattern = "node \\[shape = box", e$expr[1])
    ok <- all(t1, t2)
  }, silent = TRUE)
  exists('ok') && isTRUE(ok)
}

test_node_attributes <- function() {
  # Get e
  e <- get('e', parent.frame())
  # Test expression from user's script
  try({
    t1 <- grepl(pattern = "color = green", e$expr[1])
    t2 <- grepl(pattern = "fillcolor = limegreen", e$expr[1])
    t3 <- !grepl(pattern = "color = navy", e$expr[1])
    t4 <- !grepl(pattern = "fillcolor = steelblue", e$expr[1])
    ok <- all(t1, t2, t3, t4)
  }, silent = TRUE)
  exists('ok') && isTRUE(ok)
}

test_edge_attributes <- function() {
  # Get e
  e <- get('e', parent.frame())
  x <<- e$expr[1]
  # Test expression from user's script
  try({
    t1 <- grepl(pattern = "edge \\[color = red, arrowhead = diamond\\].*A->B B->C", e$expr[1])
    t2 <- grepl(pattern = "edge \\[color = black, arrowhead = box\\].*A->1 A->2 B->3 B->4 C->5 C->6", e$expr[1])
    t3 <- grepl(pattern = "edge \\[color = blue, arrowhead = dot\\].*1->3 2->4 3->5 4->6", e$expr[1])
    t4 <- !grepl(pattern = "arrowhead = normal", e$expr[1])
    t5 <- !grepl(pattern = "arrowhead = inv", e$expr[1])
    t6 <- !grepl(pattern = "arrowhead = none", e$expr[1])
    ok <- all(t1, t2, t3, t4, t5, t6)
  }, silent = TRUE)
  exists('ok') && isTRUE(ok)
}