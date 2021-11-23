library(shiny)
library(jsonlite)
library(tidyverse)
library(shinythemes)
library(shinyjs)
library(DT)
library(shinyBS)
library(shinyjqui)
library(shinycssloaders)
library(shinyWidgets)


source("./tests/devTests.R")

# constants and globals
source("./settings/constants.R")
source("./settings/globals.R")
#source("./data/dataStore.R")

# modules
source("./modules/AppContainerUI.R")
source("./modules/AppContainerServer.R")


theme_set(theme_minimal())

ui <- function(request) { 
  
  fluidPage(theme = shinytheme("paper"),
            includeCSS("./www/css/style.css"),
            fluidRow(
              class = "tba",
              AppContainerUI("AppContainer")
              
            ))
}

# server --------------------------------------------------------
server <- function(input, output, session) {
  
  

   AppContainer <- callModule(AppContainerServer,
                              "AppContainer",
                              dataset = iris)

  
}

enableBookmarking(store = "url")
shinyApp(ui, server)


