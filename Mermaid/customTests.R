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

test_mermaid_regex <- function(regex_patterns) {
  # Get e
  e <- get('e', parent.frame())
  # Test mermaid class
  # Regex tests on $diagram syntax
  try({
    t1 <- is(e$val, c("DiagrammeR", "htmlwidget"))
    t2 <- sapply(regex_patterns, grepl, e$val$x$diagram)
    ok <- all(t1, t2)
  }, silent = TRUE)
  exists('ok') && isTRUE(ok)
}
