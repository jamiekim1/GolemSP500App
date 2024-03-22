#' Rets UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_Rets_ui <- function(id){
  ns <- NS(id)
  tagList(
    shiny::tabsetPanel(
      shiny::tabPanel(
        h2("Sector Returns"),
        plotOutput("data_table")
      )
    )
  )
}

#' Rets Server Functions
#'
#' @noRd
mod_Rets_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns

  })
}

## To be copied in the UI
# mod_Rets_ui("Rets_1")

## To be copied in the server
# mod_Rets_server("Rets_1")
