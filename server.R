
library(jsonlite)
library(tidyverse)

setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

# Server Function:----
shinyServer(function(input, output, session) {
    observeEvent(input$filter,{
      json_map_input <- read_json(path = "./metadata.json") # Read json
      session$sendCustomMessage(type="jsondata",json_map_input) # handshake with shiny_handler.js file
    })
})
