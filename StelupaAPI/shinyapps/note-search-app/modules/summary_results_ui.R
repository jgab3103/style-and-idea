summary_results_ui <- function(id) {
  ns <- NS(id)
  
  tagList(
    
    
    

  div(class = "scroll-fix-table",
    tabsetPanel(type = "tabs",
                tabPanel("Common melodic patterns", 
                         br(),
                         DTOutput(ns("melodic_patterns"))),
                tabPanel("Common harmonic patterns", 
                         br(),
                         DTOutput(ns("harmony_patterns"))),
                tabPanel("Specific melodic patterns", 
                         class = "fix_table",
                         br(),
                         DTOutput(ns("specific_melodic_patterns"))),
                tabPanel("Instrumentation", 
                         br(),
                         DTOutput(ns("instrumentation_patterns")))
   )  

  )
  )
}