library(shiny)
library(sunburstR)
library(tidyverse)
library(shinythemes)
library(shinyBS)
library(DT)
library(tidyverse)

source("./utilities/create_string_subset.R")

source("./modules/menu_controls_ui.R")
source("./modules/app_header_ui.R")





# import temp data ----------------------------------
seq_data <- read_csv("./data.csv")
recording_details <- read_csv("./data/recordings.csv")

# prepare temp data ---------------------------------




ui <- function(request) { 
  
  fluidPage(theme = shinytheme("paper"),
            style = "height:200px;background-color: white;",
            tags$head(
              tags$link(rel = "stylesheet", 
                        type = "text/css", 
                        href = "css/style.css")),
            app_header_ui("app_header_ui"),
            fluidRow(
              class = "cont",
              

  
                  
              
                column(3,
                       class = "blah",
                       menu_controls_ui("menu_controls_ui")
                       ),
              
              column(9,
                     class = "blah",
                     tabsetPanel(
                       tabPanel("Melodic sequence visualisation", sunburstOutput("sun"),
                                br(),
                                div("Lorem ipsum dolor amet williamsburg selfies hot chicken scenester. 
                                    Twee bicycle rights blog readymade enamel pin. Street art neutra authentic hella waistcoat. 
                                    Tattooed humblebrag vexillologist, pork belly gentrify readymade forage. Chia freegan bushwick 
                                    kogi wolf disrupt kombucha portland keytar. Single-origin coffee ramps pour-over, brooklyn 
                                    literally edison bulb four loko selfies. Chillwave pug tumblr, bespoke fam distillery authentic 
                                    organic skateboard letterpress")),
                  
                       tabPanel("About", 
                                fluidRow(
                                 
                                  column(5,
                                         includeHTML("./html_partials/about_partial.html")
                                         
                                         
                                         ),
                                 
                                  column(1, div('')),
                                  column(5, tableOutput('table'))
                                 
                                  
                                ))
                     )
              )
              
              
            ))
}

  
  
  

 
  
server <- function(input, output, session) {
    output$sun <- renderSunburst({
      
      sequence_counts <- seq_data %>%
        mutate(melodic_subset = str_extract(note_name_sequence, regex(create_string_subset(5)))) %>%
        mutate(mel = str_replace_all(melodic_subset, ";", "-")) %>%
        dplyr::group_by(mel) %>%
        dplyr::summarise(count = n()) %>%
        dplyr::ungroup() %>%
        filter(count > 1) %>%
        select(mel,
               count)
      sunburst(height = "800px",
               sequence_counts)
    })
    
    output$table <- renderTable(recording_details)
}
  
enableBookmarking(store = "url")
shinyApp(ui, server)
  
