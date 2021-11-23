
# API -----------------------------------------------------------------------------------------
state_manager_get_works <- function() {
  
  if (is.null(g_works_with_scores)) {
    data =  fromJSON(paste0(REST_API_BASE_URL, 
                            REST_API_WORKS_APPEND_URL))$results
    g_works_with_scores <<- data
  } 
  else {
    data = g_works_with_scores
  }
  
  return(data)
}


state_manager_get_musicians <- function() {
  
  if (is.null(g_musicians)) {
    data =  fromJSON(paste0(REST_API_BASE_URL, 
                            REST_API_MUSICIANS_APPEND_URL))$results
    g_musicians <<- data
  } 
  else {
    data = g_musicians
  }
  
  return(data)
}

state_manager_create_notes <- function(work_id) {
  
    data =  fromJSON(paste0(REST_API_BASE_URL, 
                            REST_API_NOTES_APPEND_URL, 
                            work_id, "&limit=10000"))$results
    g_current_work_notes <<- data
    g_current_work_id <<- work_id
    
}

fu <- function(midi_number) {
  
  midi_list = data.frame(midi_number_list = midi_number)
  

  
  
  if (nrow(midi_list) == 0) {
    return("DFF")
  }
  else {
    midi_list <- midi_list %>%
      arrange(midi_number_list) %>%
      mutate(prev = lag(midi_number_list)) %>%
      mutate(sem_diff = as.numeric(midi_number_list - prev)) %>%
      na.omit()  %>%
      filter(sem_diff > 0) %>%
      mutate(blah = cumsum(sem_diff)) %>%
      mutate(foo = blah %% 12) %>%
      filter(foo > 0) %>%
      arrange(foo)
  
    d = unique(midi_list$foo)

    
    a <- paste(d, collapse = ', ')
    

    
    if(length(d) == 0) {
      return(NA)
    } else {
      return(a)
    }
    
  }
  
} 


state_manager_create_harmonic_structures <- function() {
  glimpse(g_current_work_notes)
  
  
  df1 <- g_current_work_notes %>% 
    dplyr::filter(!is.na(midi_number)) %>%
    dplyr::group_by(starting_location) %>%
    dplyr::mutate(chord_value = fu(midi_number))  %>%
    dplyr::ungroup() %>%
    dplyr::select(
      starting_location,
      chord_value,
      midi_number
    ) %>%
    dplyr::group_by(starting_location, chord_value) %>%
    dplyr::mutate(lowest_midi_number = min(midi_number)) %>%
    dplyr::ungroup() %>%
    dplyr::select(-midi_number) %>%
    filter(complete.cases(.)) %>%
    distinct()
  
 
  
  g_current_work_harmonic_structures <<- df1
}




state_manager_set_measure_count <- function(count) {
 g_max_measure <<- count  
}