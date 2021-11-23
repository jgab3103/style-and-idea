score_detail_ui <- function(id) {
  
  
  ns <- NS(id)
  
  # define choices for X and Y variable selection
  tagList(
    bsCollapse(id = "collapseExample1", open = "Score detail",
               bsCollapsePanel("Score detail", "This is a panel with just text ",
                               "and has the default style. You can change the style in ",
                               "the sidebar.", 
                               
                               selectInput(ns("score_choice"), tags$b("Scores"),
                                           multiple = FALSE,
                                           choices = server_create_list_of_works(), 
                                           selected = "All the things you are"),
                               sliderInput(ns("measure_location"), 
                                           label = tags$b("Measure location"), 
                                           min = 0, 
                                           max = g_max_measure, value = c(0, g_max_measure)),
                               
                               style = "primary"))
    
  )
}
