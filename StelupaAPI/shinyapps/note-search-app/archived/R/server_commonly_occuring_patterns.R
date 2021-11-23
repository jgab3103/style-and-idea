

# Create distances between notes --------------------------------------------
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
    
    #print(midi_list)
    
    #print(min(midi_list$blah))
    
    d = unique(midi_list$foo)
    #b <- lapply(midi_list$sem_diff, map_interval_to_interval_name)
    #c <- paste(b, collapse = ', ')
    
    
    #print(d)
    
    a <- paste(d, collapse = ', ')
    
    print(length(d))
    
    if(length(d) == 0) {
      return(NA)
    } else {
      return(a)
    }
    
  }
  
} 

df1 <- df0 %>% 
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


glimpse(df1)