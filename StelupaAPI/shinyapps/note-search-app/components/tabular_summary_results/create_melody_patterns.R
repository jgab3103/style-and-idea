create_melody_patterns <- reactive({
  
  if (input$common_specific == 1) {
    
    # fix panels
    # instrumentation tab 
    # harmony tab 
    
    
    
    data <- seq_data %>%
      filter(n_gram_count == input$n_note_most_common_melody,
             total_appearances >= input$number_of_appearances) %>%
      select(-total_appearances)
    
    return(DT::datatable(data))
    
    
  }   
  else {
    data <- seq_data %>%
      filter(sequence == input$melody_sequence_choice 
             | relative_seqence == input$melody_sequence_choice) %>%
      select(-total_appearances)
    
    return(DT::datatable(data))
    
  }
  
  
  
})
