settings_filter_ui <- function(id) {
  
  
  ns <- NS(id)
  
  # define choices for X and Y variable selection
  tagList(
    
    bsCollapse(id = "collapseExample2", open = "Settings",
               bsCollapsePanel("Settings", 
                               
                               
                               checkboxInput(ns("limit_to_current_score"), label = "Limit search to displayed score only", value = TRUE),
                               
                               
                               style = "primary"))
    
  )
}
