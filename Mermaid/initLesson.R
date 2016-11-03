# Code placed in this file fill be executed every time the
      # lesson is started. Any variables created here will show up in
      # the user's working directory and thus be accessible to them
      # throughout the lesson.

LR_ABCD <- c("mermaid('graph LR;A-->B;A-->C;B-->D;C-->D')",
             "mermaid('graph LR; A-->B; A-->C; B-->D; C-->D')",
             "mermaid('graph LR;A --> B;A --> C;B --> D;C --> D')",
             "mermaid('graph LR; A --> B; A --> C; B --> D; C --> D')"
             )
TB_ABCD <- c("mermaid('graph TB;A---B;A---C;B---D;C---D')",
             "mermaid('graph TB; A---B; A---C; B---D; C---D')",
             "mermaid('graph TB;A --- B;A --- C;B --- D;C --- D')",
             "mermaid('graph TB; A --- B; A --- C; B --- D; C --- D')"
            )
             
RL_ABCD <- c("mermaid('graph RL;A---B;B---C;B-->D')",
             "mermaid('graph RL; A---B; B---C; B-->D')",
             "mermaid('graph RL;A --- B;B --- C;B --> D')",
             "mermaid('graph RL; A --- B; B --- C; B --> D')"
            )