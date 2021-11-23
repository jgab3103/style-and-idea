# data filter for pianoroll ------------------------------------------------------
vis_work <- reactive({
  
  min_measure = input$measure_location[1]
  max_measure = input$measure_location[2]
  
  notes_id <- merged_data %>%
    filter(list_display == input$score_choice) %>%
    select(id)
  
  
  
  
  
  state_manager_create_notes(notes_id$id)
  notes <- g_current_work_notes
  
  measures_in_work <- max(notes$current_measure)
  state_manager_set_measure_count(measures_in_work) 
  
  updateSliderInput(session, "measure_location", value = NULL,
                    min = 0, 
                    max = measures_in_work, step = 1)
  
  filtered_notes <- notes %>%
    filter(current_measure <= max_measure) %>%
    filter(current_measure >= min_measure)
  
  min_location_given_measure_selection <- min(filtered_notes$starting_location)
  
  filtered_notes <- filtered_notes %>%
    mutate(starting_location = starting_location - min_location_given_measure_selection,
           starting_location_of_current_measure = starting_location_of_current_measure - min_location_given_measure_selection)
  
  
  
  
  pianoroll_visualisation <- r2d3(
    d3_version = 4,
    data = filtered_notes,
    script = "./components/pianoroll/render_notes2.js",
  )
  
  return(pianoroll_visualisation)
  
})





# render pianoroll 
output$d3 <- renderD3({
  notes <<- NULL
  vis_work()
})


output$score_name <- renderText({
  input$score_choice
  
})



# data filter for melody patterns --------------------------------------------
summarise_patterns <- reactive({
  
  if (input$common_specific == 1) {
    
    data <- seq_data %>%
      filter(n_gram_count == input$n_note_most_common_melody,
             total_appearances >= input$number_of_appearances) %>%
      select(-total_appearances)
    
    return(data)
  }   
  else {
    data <- seq_data %>%
      filter(sequence == input$melody_sequence_choice 
             | relative_seqence == input$melody_sequence_choice) %>%
      select(-total_appearances)
    
    return(data)
    
  }
  
})








# render melody patterns ------------------------------------------------
output$melody_patterns <- DT::renderDataTable({
  DT::datatable(summarise_patterns(),
                options = list(initComplete = JS(js)))
})


# render harmony patterns -----------------------------------------------
output$harmony_patterns <- DT::renderDataTable({
  create_harmony_patterns()
})