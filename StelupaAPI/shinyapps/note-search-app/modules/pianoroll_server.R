pianoroll_server <- function(input, 
                             output, 
                             session, 
                             score_filter_choices) {
  
  
    pianoroll_results <- reactive({
        
        print(score_filter_choices$score_choice())

        
        
        min_measure = score_filter_choices$measure_location()[1]
        max_measure = score_filter_choices$measure_location()[2]
        
        
      ####
        
        notes_id <- merged_data %>%
          filter(list_display == score_filter_choices$score_choice()) %>%
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
        
        
        #####
        
       
        
        
        return( r2d3(
          d3_version = 4,
          data = filtered_notes,
          script = "./components/pianoroll/render_notes2.js",
        )
        )
      })
  
  
  
  output$d3_render <- renderD3({
   pianoroll_results()
    
    
    
  }) 

  
  
  
}