specific_patterns_server <- function(input, output, session) {
  
  return(
    list(
      melodic_sequence_choice = reactive({ input$melodic_sequence_choice }),
      melodic_pattern_search_type = reactive({ input$melodic_pattern_search_type }),
      ignore_octave = reactive({input$ignore_octave}),
      fuzzy_search = reactive({input$fuzzy_search}),
      position_in_measure_location = reactive({input$position_in_measure_location})
    ))
}
