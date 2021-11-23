AppContainerUI <- function(id) {
  ns <- NS(id)
  
  tagList(
    
    
    navbarPage("sss",
               tabPanel("Vis",
                        br(),
                        div('asdfasd')
               ),

               tabPanel("About",
                        br(),
                       div("asdfasdfa")
               )
               
    )
  )
}