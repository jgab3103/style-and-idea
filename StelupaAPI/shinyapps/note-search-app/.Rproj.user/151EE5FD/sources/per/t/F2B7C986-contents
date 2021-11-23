common_patterns_ui <- function(id) {
  
  ns <- NS(id)
  
  tagList(
    
    bsCollapse(id = "collapseExample", open = "Find common melodic patterns",
               bsCollapsePanel("Find common melodic patterns",
                               tags$b("Melody"),
                               radioButtons(ns("pattern_search_type"), label = " ",
                                            choices = list("Pitch only" = 1,
                                                           "Duration only" = 2,
                                                           "Pitch and duration" = 3,
                                                           "Distance between subsequent pitches" = 4), 
                                            selected = 1),
                               checkboxInput(ns("ignore_octaves"), label = "Ignore octave when searching pitch", value = FALSE),
                               sliderInput(ns("n_gram_size"), 
                                           label = tags$b("N-note commonly occuring melodic sequences"), 
                                           min = 1, 
                                           max = 10, value = 5),
                               sliderInput(ns("number_of_appearances"), 
                                           label = tags$b("Minimum number of occurences"), 
                                           min = 0, 
                                           max = 100, value = 1),

                               style="primary"))
    
  )
}
