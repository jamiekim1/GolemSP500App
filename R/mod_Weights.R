#' Weights UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_Weights_ui <- function(id){
  ns <- NS(id)
  tagList(
  shiny::tabsetPanel(
    shiny::tabPanel(
      h2("Historical S&P 500 Sector Weights"),
      plotOutput("data_table"),
      h2(""),
      plotOutput("plot")
    )
  )
  )
}

#' Weights Server Functions
#'
#' @noRd
mod_Weights_server <- function(id, r){
  moduleServer(id, function(input, output, session){
    ns <- session$ns
    output$data_table <- renderPlot({
      ggplot2::ggplot(r$df2, aes(x = Date, y = Weights, col = Sectors)) +
        geom_line() +
        theme_minimal() +
        theme(axis.line = element_line(color = "black"),
              axis.ticks = element_line(color = "black"),
              legend.title = element_text(color = "black", size = 10, face = "bold"),
              axis.title.x = element_text(color = "black", size = 10),
              axis.title.y = element_text(color = "black", size = 10)) +
        scale_color_discrete(name = "Sectors") +
        labs(x = "", y = "Sector Weights")
    })
  })
}

## To be copied in the UI
# mod_Weights_ui("Weights_1")

## To be copied in the server
# mod_Weights_server("Weights_1")
