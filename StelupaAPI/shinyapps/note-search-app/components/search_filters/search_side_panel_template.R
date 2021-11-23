search_side_panel_template <- function() {
  return(
    column(class="blah",
           3, 
           br(),
           bsCollapse(id = "collapseExample1", open = "Score detail",
                      bsCollapsePanel("Score detail", "This is a panel with just text ",
                                      "and has the default style. You can change the style in ",
                                      "the sidebar.", 
                                      
                                      selectInput("score_choice", tags$b("Scores"),
                                                  multiple = FALSE,
                                                  choices = server_create_list_of_works(), 
                                                  selected = "All the things you are"),
                                      sliderInput("measure_location", 
                                                  label = tags$b("Measure location"), 
                                                  min = 0, 
                                                  max = g_max_measure, value = c(0, g_max_measure)),
                                      
                                      style = "primary")),
           
           
           bsCollapse(id = "collapseExample2", open = "Settings",
                      bsCollapsePanel("Settings", "This is a panel with just text ",
                                      "and has the default style. You can change the style in ",
                                      "the sidebar.", 
                                      
                                      checkboxInput("common_specifics", label = "Limit search to displayed score only", value = TRUE),
                                      radioButtons("common_specific", label = " ",
                                                   choices = list("Search for common patterns" = 1, 
                                                                  "Search for specific patterns" = 2), 
                                                   selected = 1),
                                      
                                      
                                      style = "primary")),
           
           
           
           
           
           
           bsCollapse(id = "collapseExample", open = "Find common patterns",
                      bsCollapsePanel("Find common pattern",
                                      tags$b("Melody"),
                                      radioButtons("radioss", label = " ",
                                                   choices = list("Search pitch only" = 1,
                                                                  "Search duration only" = 2,
                                                                  "Search pitch and duration" = 3), 
                                                   selected = 1),
                                      checkboxInput("checkbox", label = "Ignore octave when searching pitch", value = FALSE),
                                      sliderInput("n_note_most_common_melody", 
                                                  label = tags$b("N-note commonly occuring melodic sequences"), 
                                                  min = 0, 
                                                  max = 10, value = 5),
                                      sliderInput("number_of_appearances", 
                                                  label = tags$b("Minimum number of occurences"), 
                                                  min = 0, 
                                                  max = 50, value = 1),
                                      tags$b("Harmony"),
                                      checkboxInput("checewkbox", label = "Minimise all voicings to within the octave", value = FALSE),
                                      sliderInput("n_note_most_common_harmony", 
                                                  label = tags$b("N-note most commonly harmonic structures"), 
                                                  min = 0, 
                                                  max = 8, value = c(0, 8)),
                                      textInput("lowest_voicing_pitch", 
                                                label = tags$b("Lowest pitch in voicing"), 
                                                value = "",
                                                placeholder = "Any lowest pitch"),
                                      style="primary"),
                      bsCollapsePanel("Find specific patterns", 
                                      h6(tags$b("Specific melodic sequences")),
                                      checkboxInput("fuzzy_search", label = "Allow fuzzy search", value = FALSE),
                                      textInput("melody_sequence_choice", 
                                                label = tags$b("Search for a melody"), 
                                                value = ""),
                                      textInput("text", 
                                                label = tags$b("Search for a sequence of note durations"), 
                                                value = ""),
                                      sliderInput("measure_locationssss", 
                                                  label = tags$b("Starting position in measure"), 
                                                  min = 0, 
                                                  max = 12, value = c(0,12)),
                                      h6(tags$b("Specific harmonic structures")),
                                      
                                      selectInput("select1", tags$b("Search for a particular chord voicing in a single instrument part"),
                                                  multiple = TRUE,
                                                  choices = list("Choice 1" = 1, "Choice 2" = 2, "Choice 3" = 3), 
                                                  selected = 1),
                                      selectInput("select1", tags$b("Search for a particular chord voicing across all instrument parts (ignoring doubled notes)"),
                                                  multiple = TRUE,
                                                  choices = list("Choice 1" = 1, "Choice 2" = 2, "Choice 3" = 3), 
                                                  selected = 1),
                                      selectInput("select1", tags$b("Search for a minimised chord voicing in a single instrument part"),
                                                  multiple = TRUE,
                                                  choices = list("Choice 1" = 1, "Choice 2" = 2, "Choice 3" = 3), 
                                                  selected = 1),
                                      selectInput("select1", tags$b("Search for a minimised chord voicing across all instrument parts"),
                                                  multiple = TRUE,
                                                  choices = list("Choice 1" = 1, "Choice 2" = 2, "Choice 3" = 3), 
                                                  selected = 1),
                                      selectInput("select1", tags$b("Search using vertical distnaces between each chordal note, in a single instrument part"),
                                                  multiple = TRUE,
                                                  choices = list("Choice 1" = 1, "Choice 2" = 2, "Choice 3" = 3), 
                                                  selected = 1),
                                      selectInput("select1", tags$b("Search using vertical distnaces between each chordal note, across all instrument parts"),
                                                  multiple = TRUE,
                                                  choices = list("Choice 1" = 1, "Choice 2" = 2, "Choice 3" = 3), 
                                                  selected = 1),
                                      h6(tags$b("Instrumentation")),
                                      selectInput("select1", tags$b("Search instruments"),
                                                  multiple = TRUE,
                                                  choices = list("Choice 1" = 1, "Choice 2" = 2, "Choice 3" = 3), 
                                                  selected = 1),
                                      selectInput("select1", tags$b("Search instrumental groups"),
                                                  multiple = TRUE,
                                                  choices = list("Choice 1" = 1, "Choice 2" = 2, "Choice 3" = 3), 
                                                  selected = 1),
                                      
                                      style = "primary")
           )
           
           
           
           
           
           
           
    )
  )
}