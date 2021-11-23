harmony_filter_ui <- function(id) {
  
  
  ns <- NS(id)
  
  # define choices for X and Y variable selection
  tagList(bsCollapse(id = "collapseExample", 
             open = "Search instrumentation",
      bsCollapsePanel("Search instrumentation", 
                
                  
                  selectInput(ns("instrument_groupings"), 
                              tags$b("Instruments and instrumental groupings"),
                              multiple = FALSE,
                              choices = unique(instrumentation_summary_data$instruments_present), 
                              selected = 1),
                  sliderInput(ns("min_number_of_consecutive_bars"), 
                              label = tags$b("Minimum number of consecutive bars this instrument or instrumental grouping appears"), 
                              min = 1, 
                              max = 10, value = 1),
                  sliderInput(ns("instrumentation_measure_range"), 
                              label = tags$b("Limit range of measures"), 
                              min = 1, 
                              max = 100, value = c(1,100)),


                  
                  style = "primary")))
}
