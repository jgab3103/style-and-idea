library(shiny)
library(sunburstR)
library(tidyverse)

create_subset_regex_string <- function(subset_length) {
  
  if(subset_length == 1) {
    return("[^;]*")
  } else if (subset_length == 2) {
    return("[^;]*-[^;]*")
  } else if (subset_length == 3) {
    return("[^;]*;[^;]*;[^;]*")
  } else if (subset_length == 4) {
    return("[^;]*;[^;]*;[^;]*;[^;]*")
  } else if (subset_length == 5) {
    return("[^;]*;[^;]*;[^;]*;[^;]*;[^;]*")
  } else if (subset_length == 6) {
    return("[^;]*;[^;]*;[^;]*;[^;]*;[^;]*;[^;]*")
  } else if (subset_length == 7) {
    return("[^;]*;[^;]*;[^;]*;[^;]*;[^;]*;[^;]*;[^;]*")
  } else if (subset_length == 8) {
    return("[^;]*;[^;]*;[^;]*;[^;]*;[^;]*;[^;]*;[^;]*;[^;]*")
  } else if (subset_length == 9) {
    return("[^;]*;[^;]*;[^;]*;[^;]*;[^;]*;[^;]*;[^;]*;[^;]*;[^;]*")
  } else {
    return("[^;]*;[^;]*;[^;]*;[^;]*;[^;]*;[^;]*;[^;]*;[^;]*;[^;]*;[^;]*")
  }
  
}
# use a sample of the sequences csv data

seq_data <- read_csv("./data.csv")


test <- seq_data %>%
  mutate(melodic_subset = str_extract(note_name_sequence, regex(create_subset_regex_string(4)))) %>%
  mutate(mel = str_replace_all(melodic_subset, ";", "-")) %>%
  dplyr::group_by(mel) %>%
  dplyr::summarise(count = n()) %>%
  dplyr::ungroup() %>%
  filter(count > 2) %>%
  select(mel,
         count)


test

sund2b(
  test,
  colors = htmlwidgets::JS("d3.scaleOrdinal(d3.schemeCategory20b)")
)



sunburst(data = test)

ui <- sunburstOutput("sun")

server <- function(input, output, session) {
  output$sun <- renderSunburst({
    sunburst(test)
  })
}

shinyApp(ui, server)

