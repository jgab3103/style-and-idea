AppContainerServer <- function(input, 
                               output, 
                               session,
                               dataset) {
  
  data_results <- reactive({
    return(dataset)
  })
  
  output$test_table <- renderDT({
    data_results()
  })
  

  
}