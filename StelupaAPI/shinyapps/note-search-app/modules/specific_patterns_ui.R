specific_patterns_ui <- function(id) {
  
  
  ns <- NS(id)

  tagList(
    
    bsCollapse(id = "collapseExample", open = "Find specific melodic patterns",
               bsCollapsePanel("Find specific melodic patterns", 
                             
                               textInput(ns("melodic_sequence_choice"), 
                                         label = tags$b("Input melody string:"), 
                                         value = "test"),
                               radioButtons(ns("melodic_pattern_search_type"), label = " ",
                                            choices = list("Pitch only" = 1,
                                                           "Duration only" = 2,
                                                           "Pitch and duration" = 3,
                                                           "Distance between subsequent pitches" = 4), 
                                            selected = 1),
                        
                               checkboxInput(ns("ignore_octave"), label = "Ignore octave when specifying note name", value = FALSE),
                               checkboxInput(ns("fuzzy_search"), label = "Allow fuzzy search", value = FALSE),

                               sliderInput(ns("position_in_measure_location"), 
                                           label = tags$b("Set starting position in measure"), 
                                           min = 0, 
                                           max = 12, value = c(0,12)),
 
                               
                               style = "primary"))
    
  )
}