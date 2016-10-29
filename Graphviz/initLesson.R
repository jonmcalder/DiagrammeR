# Code placed in this file fill be executed every time the
      # lesson is started. Any variables created here will show up in
      # the user's working directory and thus be accessible to them
      # throughout the lesson.

.get_course_path <- function(){
  tryCatch(swirl:::swirl_courses_dir(),
           error = function(c) {file.path(find.package("swirl"),"Courses")}
  )
}

source(file.path(.get_course_path(), "Diagrammer", "Graphviz", 
                 "graphviz_template.R"))

BobPeteSteve <- "strict digraph SimpleABC {Bob->Pete;Pete->Steve;Steve->Bob}"