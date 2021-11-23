search_side_panel_results <- function() {
  return(
    
    column(class = "scroll-fix",
      9,
           
           fluidRow(
             div(
                 div(d3Output("d3"))),
             div(
               column(6,
                      br(),
                      textOutput("score_name")),
               column(6,
                      align = "right",
                      br(),
                      tags$audio(src = "audio/gold_4.mp3", type = "audio/mp3", 
                                 autoplay = FALSE, controls = TRUE))
             )
           ),
           fluidRow(
             tabsetPanel(type = "tabs",
                         # tabPanel("Common patterns", 
                         #          d3Output("notes_summary")),
                         tabPanel("Melody", div(DTOutput("tbl"))),
                         tabPanel("Harmony", plotOutput("plotsss")),
                         tabPanel("Insrumentation", plotOutput("pleeeotsss")),
                         tabPanel("Getting started", plotOutput("plsssotsss"))
                         )
           )
           
    )
  )
}