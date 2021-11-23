

create_subset_regex_string <- function(subset_length) {
  
  if(subset_length == 1) {
    return("[^,]*")
  } else if (subset_length == 2) {
    return("[^,]*,[^,]*")
  } else if (subset_length == 3) {
    return("[^,]*,[^,]*,[^,]*")
  } else if (subset_length == 4) {
    return("[^,]*,[^,]*,[^,]*,[^,]*")
  } else if (subset_length == 5) {
    return("[^,]*,[^,]*,[^,]*,[^,]*,[^,]*")
  } else if (subset_length == 6) {
    return("[^,]*,[^,]*,[^,]*,[^,]*,[^,]*,[^,]*")
  } else if (subset_length == 7) {
    return("[^,]*,[^,]*,[^,]*,[^,]*,[^,]*,[^,]*,[^,]*")
  } else if (subset_length == 8) {
    return("[^,]*,[^,]*,[^,]*,[^,]*,[^,]*,[^,]*,[^,]*,[^,]*")
  } else if (subset_length == 9) {
    return("[^,]*,[^,]*,[^,]*,[^,]*,[^,]*,[^,]*,[^,]*,[^,]*,[^,]*")
  } else {
    return("[^,]*,[^,]*,[^,]*,[^,]*,[^,]*,[^,]*,[^,]*,[^,]*,[^,]*,[^,]*")
  }
  
}



summary_results_server <- function(input, 
                                   output, 
                                   session,
                                   dataset,
                                   common_patterns_choices,
                                   common_harmonic_patterns_choices,
                                   harmony_filter_choices,
                                   specific_patterns_choices) {

  
  # Test results ------------------------------------------------------------
  harmony_summary_results <- reactive({
    
    if(harmony_filter_choices$xvar() == 1) {
      p <- dataset %>% 
        filter(mpg < 20)
    } else {
      p <- dataset
    }
    return(p)
  })
  

  
  
  output$harmony_patterns_t<- renderDT({
    harmony_summary_results()
  })
  # End ---------------------------------------------------------------------
  
  # Harmony common patterns -------------------------------------------------
  harmonic_patterns_summary_results <- reactive({
    
    print(common_harmonic_patterns_choices$has_octave_doubling())
    print(common_harmonic_patterns_choices$bass_note())
    print(str_length(common_harmonic_patterns_choices$bass_note()))
    
    
    bar <- harmony_summary_data %>%
      filter(has_octave_doubling == common_harmonic_patterns_choices$has_octave_doubling(),
             has_unison_doubling == common_harmonic_patterns_choices$has_unison_doubling()) %>%

      mutate(melodic_subset = str_extract(chord_midi_list, regex(create_subset_regex_string(common_harmonic_patterns_choices$n_note_most_common_harmony())))) %>%
      group_by(melodic_subset) %>%
      mutate(total_appearances = n()) %>%
      arrange(desc(total_appearances)) %>% 
      filter(if(str_length(common_harmonic_patterns_choices$bass_note()) != 0) bass_note_midi_number == common_harmonic_patterns_choices$bass_note() else TRUE) %>%
      filter(str_length(melodic_subset) >= 0) %>%
      select(starting_location_as_decimal_position,
             bass_note_midi_number,
             melodic_subset,
             total_appearances)
    
    return(bar)
    
    
  })
  
  
  
  output$harmony_patterns<- renderDT(
    harmonic_patterns_summary_results(), 
    extensions = 'Buttons', 
    options = list(
      dom = 'Bfrtip',
      buttons = c('copy', 'csv', 'excel', 'pdf', 'print')
    )
  )
  
  # End harmony common patterns ---------------------------------------------
  
  
  
  # Melodic pattern results ------------------------------------------------- 
  melodic_summary_results <- reactive({
    
    n_gram_size <- common_patterns_choices$n_gram_size()
    patttern_search_type <- common_patterns_choices$pattern_search_type()
    
    foo <- melody_summary_data %>%
      mutate(pattern_search_type = common_patterns_choices$pattern_search_type()) %>%
      mutate(melodic_subset = case_when(pattern_search_type == 1 ~ str_extract(note_name_sequence, regex(create_subset_regex_string(n_gram_size))),
                                 pattern_search_type == 2 ~ str_extract(duration_sequence, regex(create_subset_regex_string(n_gram_size))),
                                 pattern_search_type == 3 ~ str_extract(note_name_and_duration_sequence, regex(create_subset_regex_string(n_gram_size))),
                                 pattern_search_type == 4 ~ str_extract(melodic_sequence_relative, regex(create_subset_regex_string(n_gram_size))),
                                 TRUE ~ as.character("DFDFD"))) %>%
      group_by(melodic_subset) %>%
      mutate(total_appearances = n()) %>%
      arrange(desc(total_appearances)) %>% 
      filter(total_appearances >= common_patterns_choices$number_of_appearances()) %>%
      select(work_id,
             pattern_search_type,
             instrument_id,
             starting_location_as_decimal,
             melodic_subset,
             total_appearances)
    
    
    
    glimpse(foo)
    return(foo)
  })
  
  
  
  output$melodic_patterns<- renderDT(
    melodic_summary_results(), 
    extensions = 'Buttons', 
    options = list(
      dom = 'Bfrtip',
      buttons = c('copy', 'csv', 'excel', 'pdf', 'print')
    )
    
    
  )
  
  # End melodic pattern results ---------------------------------------------
  
  
  
  
  # specific melodies
  
  specific_melodic_summary_results <- reactive({
    
    print("HELLO")
    
    print(specific_patterns_choices$melodic_sequence_choice())
    mel_choice = specific_patterns_choices$melodic_sequence_choice()
    pattern_search_choice = specific_patterns_choices$melodic_pattern_search_type()
    
    
    foo <- melody_summary_data %>%
      mutate(pattern_search_type = pattern_search_choice) %>%
      mutate(melodic_subset = case_when(pattern_search_type == 1 ~ str_extract(note_name_sequence, regex(paste0("^", mel_choice))),
                                        pattern_search_type == 2 ~ str_extract(duration_sequence, regex(paste0("^", mel_choice))),
                                        pattern_search_type == 3 ~ str_extract(note_name_and_duration_sequence,regex(paste0("^", mel_choice))),
                                        pattern_search_type == 4 ~ str_extract(note_name_sequence, regex(paste0("^", mel_choice))),
                                        TRUE ~ as.character("DFDFD"))) %>%
      filter(!is.na(melodic_subset)) %>%
      select(work_id,
             starting_location_as_decimal,
             melodic_subset)
    
    
    

  
    glimpse(foo)
    
    
    return(foo)
  })
  
  
  
  output$specific_melodic_patterns<- renderDT(
    specific_melodic_summary_results(), 
    extensions = 'Buttons', 
    options = list(
      dom = 'Bfrtip',
      buttons = c('copy', 'csv', 'excel', 'pdf', 'print')
    )
    
    
  )
  
  
  # Instrumentation 
  
  instrumentation_summary_results <- reactive({
    
    filtered_results <- instrumentation_summary_data %>%
      filter(instruments_present == harmony_filter_choices$instrument_groupings()) %>%
      filter(combination_measure_count >= harmony_filter_choices$min_number_of_consecutive_bars()) %>%
      filter(current_measure <= harmony_filter_choices$instrumentation_measure_range()[2]) %>%
      filter(current_measure >= harmony_filter_choices$instrumentation_measure_range()[1])
    
    return(filtered_results)
  })
  
  
  
  output$instrumentation_patterns<- renderDT(
    instrumentation_summary_results(), 
    extensions = 'Buttons', 
    options = list(
      dom = 'Bfrtip',
      buttons = c('copy', 'csv', 'excel', 'pdf', 'print')
    )
    
    
  )
  
  
  

 
}
