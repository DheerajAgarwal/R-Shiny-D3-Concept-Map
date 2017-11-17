shinyUI(
  navbarPage("Concept-Map",
    # tab panel with user interaction
    tabPanel("Visual",
      br(),
      sidebarLayout(
        # create button options
        sidebarPanel(
          actionButton("filter", "Create Concept Map")
        ),
        # comcept map display panel
        mainPanel(
          tags$head(
            tags$link(rel = "stylesheet", type = "text/css", href = "concept-map.css")
          ),
          tags$script(src="concept-map.js"), # main charing js code.
          # load support scripts for concept-map visuals.
          # ref: https://github.com/gp187/d3-concept-map/tree/master/lib
          tags$script(src="d3.min.js"),
          tags$script(src="jquery-2.1.3.min.js"),
          tags$script(src="packages.js"),
          # Load R message handler js for handshake between Shiny & d3 visual
          tags$script(src="shiny_handler.js"),
          #create div ids referring to div in the shiny_handler.js
          tags$div(id="plot", class="conceptmap"),
          tags$div(id="plot-info")
        )
      )
    )
  )
)