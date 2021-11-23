library(tidyverse)
library(dplyr)

app_data <- read_csv("./data/testdata.csv")
glimpse(app_data)

app_data %>%
  dplyr::filter(!is.na(midi_number)) %>%
  dplyr::group_by(starting_location) %>%
  dplyr::summarise(a = sum(midi_number),
                   b = n()) %>%
  dplyr::ungroup()

# pass row
fu <- function(midi_number) {
  print("IN FUNC")
  a <- lapply(midi_number$midi_number, mean)
  print(a)
} 


df2 <- app_data %>% 
  dplyr::filter(!is.na(midi_number)) %>%
  dplyr::group_by(is_rest) %>%
  do(data.frame(. , e = fu(.)))

# Create distances between notes --------------------------------------------
fu <- function(midi_number, is_rest) {
  
  midi_list = data.frame(midi_number_list = midi_number)
  midi_list = dplyr::arrange(midi_list, midi_number_list)
  midi_list <- mutate(midi_list, prev = lag(midi_number_list))
  midi_list <- mutate(midi_list, sem_diff = midi_number_list - prev)

  print(midi_list)
  print(lapply(list(midi_number), mean))
  
} 

df3 <- app_data %>% 
  dplyr::filter(!is.na(midi_number)) %>%
  dplyr::group_by(starting_location) %>%
  dplyr::mutate(e = fu(midi_number, is_rest))  



glimpse(df3)
# ---------------------------------------------------------------------------





# Number of notes in a measure 
df0 <- app_data %>% 
  dplyr::filter(!is.na(midi_number)) %>%
  dplyr::group_by(starting_location_of_current_measure) %>%
  dplyr::summarise(number_of_notes_in_measure = n()) %>%
  dplyr::ungroup()


# Number of notes on each beeat
df1 <-app_data %>%
  dplyr::filter(!is.na(midi_number)) %>%
  dplyr::group_by(starting_location) %>%
  dplyr::summarise(number_of_notes_on_beat = n()) %>%
  dplyr::ungroup()





plot(df1$number_of_notes_on_beat)

