app_header_template <- function() {
  return(
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