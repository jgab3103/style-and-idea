common_harmonic_patterns_server <- function(input, output, session) {
  
  return(
    list(
      minimise_voicing_distances = reactive({ input$minimise_voicing_distances}),
      has_unison_doubling = reactive({ input$has_unison_doubling }),
      has_octave_doubling = reactive({ input$has_octave_doubling }),
      n_note_most_common_harmony = reactive({ input$n_note_most_common_harmony }),
      bass_note = reactive({ input$bass_note })
    ))
}
