# Code placed in this file fill be executed every time the
      # lesson is started. Any variables created here will show up in
      # the user's working directory and thus be accessible to them
      # throughout the lesson.

swirl_options(swirl_logging = TRUE)

LR_ABCD <- c("\\s*graph LR;.+;.+;.+;.+",
             "A\\s*-->\\s*B",
             "A\\s*-->\\s*C",
             "B\\s*-->\\s*D",
             "C\\s*-->\\s*D")
             
TB_ABCD <- c("\\s*graph TB;.+;.+;.+;.+",
             "A\\s*---\\s*B",
             "A\\s*---\\s*C",
             "B\\s*---\\s*D",
             "C\\s*---\\s*D")

RL_ABCD <- c("\\s*graph RL;.+;.+;.+",
             "A\\s*---\\s*B",
             "B\\s*---\\s*C",
             "B\\s*-->\\s*D")

LR_X <- c("\\s*graph LR;\\s*X\\[\\s*node\\s*X\\s*\\]")

LR_Y <- c("\\s*graph LR;\\s*Y\\(\\s*node\\s*Y\\s*\\)")

LR_Z <- c("\\s*graph LR;\\s*Z\\(\\(\\s*node\\s*Z\\)\\)")

LR_XX <- c("\\s*graph LR;\\s*XX\\{\\s*node\\s*XX\\}") 

LR_ZZ <- c("\\s*graph LR;\\s*ZZ>\\s*node\\s*ZZ\\]")
