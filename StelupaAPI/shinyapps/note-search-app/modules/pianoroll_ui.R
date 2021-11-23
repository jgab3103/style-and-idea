pianoroll_ui <- function(id) {
  
  
  ns <- NS(id)
  
  # define choices for X and Y variable selection
  tagList(
    
    
    jqui_resizable(fluidRow(
    div(class = "scroll-fixs",
      div(withSpinner(d3Output(ns("d3_render"))))),
    div(
      column(6,
             br(),
             textOutput(ns("score_name"))),
      column(6,
             align = "right",
             br(),
             tags$audio(src = "audio/gold_4.mp3", type = "audio/mp3",
                        autoplay = FALSE, controls = TRUE)
             )
    )
  )
  
    )
  
  
  
  )
  
  
}




