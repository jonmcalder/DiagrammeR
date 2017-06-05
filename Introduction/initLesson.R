# Code placed in this file fill be executed every time the
      # lesson is started. Any variables created here will show up in
      # the user's working directory and thus be accessible to them
      # throughout the lesson.

swirl_options(swirl_logging = TRUE)

.get_course_path <- function(){
  tryCatch(swirl:::swirl_courses_dir(),
           error = function(c) {file.path(find.package("swirl"),"Courses")}
  )
}

source(file.path(.get_course_path(), "Diagrammer", "Introduction", 
                 "graphviz_example.R"))

source(file.path(.get_course_path(), "Diagrammer", "Introduction", 
                 "mermaid_example.R"))

grViz_XYZ <- c(".*graph.*\\{.+;.+;.+\\}.*",
               "X\\s*--\\s*Y|Y\\s*--\\s*X",
               "Y\\s*--\\s*Z|Z\\s*--\\s*Y",
               "X\\s*--\\s*Z|Z\\s*--\\s*X")

mermaid_ABCD <- c(".*graph LR;.+;.+;.+;.+",
                  "A\\s*-->\\s*B",
                  "A\\s*-->\\s*C",
                  "B\\s*-->\\s*D",
                  "C\\s*-->\\s*D")
