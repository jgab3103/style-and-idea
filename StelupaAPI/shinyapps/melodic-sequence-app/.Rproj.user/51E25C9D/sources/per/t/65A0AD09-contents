menu_controls_ui <- function(id) {
  
  
  ns <- NS(id)
  
  # define choices for X and Y variable selection
  tagList(
    bsCollapse(id = "collapseExample1", open = "Score detail",
               bsCollapsePanel("Score detail", 
                               "This is a panel with just text ", 
                               
                               selectInput(ns("solo_choice"), tags$b("Select solo"),
                                           multiple = FALSE,
                                           choices = c('All the things you are', 
                                                       'Groovin high', 
                                                       'Days of wine and roses',
                                                       'Autumn leaves',
                                                       'Stella by starlight'), 
                                           selected = "All the things you are"),
                               selectInput(ns("sequence_choice"), tags$b("Select sequence choice"),
                                           multiple = FALSE,
                                           choices = c('Note names', 
                                                       'Note names (without octave)', 
                                                       'Note names and durations'), 
                                           selected = "Note names"),
                               sliderInput(ns("measure_range"), 
                                           label = tags$b("Sequence length"), 
                                           min = 0, 
                                           max = 8, value = 2),
                               sliderInput(ns("measure_range"), 
                                           label = tags$b("Measure range"), 
                                           min = 0, 
                                           max = 100, value = c(0, 90)),
                               
                               style = "primary"))
    
  )
}
