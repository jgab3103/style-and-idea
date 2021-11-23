app_header_ui <- function(id) {
  
  ns <- NS(id)
  
  tagList(
    
    fluidRow(
      br(),
      column(
        3,
        h5("Explore corpus")
      ),
      column(
        9,
        bookmarkButton(
          label = "Bookmark search settings")
      )
    ))
}