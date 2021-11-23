common_harmonic_patterns_ui <- function(id) {
  
  
  ns <- NS(id)
  
  tagList(
    
    bsCollapse(id = "collapseExample", open = "Find common harmonic patterns",
               bsCollapsePanel("Find common harmonic patterns",

                               tags$b("Harmony"),
                               checkboxInput(ns("minimise_voicing_distances"), label = "Minimise all voicings to within the octave", value = FALSE),
                               checkboxInput(ns("has_unison_doubling"), label = "Limit results where unison doubled", value = FALSE),
                               checkboxInput(ns("has_octave_doubling"), label = "Limit results to octave doubling", value = FALSE),
                               checkboxInput(ns("limit_by_instrument"), label = "Group by individual instruments", value = FALSE),
                               sliderInput(ns("n_note_most_common_harmony"), 
                                           label = tags$b("N-note commonly occuring harmonic structures"), 
                                           min = 2, 
                                           max = 8, value = 2),
                               textInput(ns("bass_note"), 
                                         label = tags$b("Bass note"), 
                                         value = "",
                                         placeholder = "Any bass_note"),
                               style="primary"))
    
  )
}
