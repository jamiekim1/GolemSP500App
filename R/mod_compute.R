#' compute UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList











mod_compute_ui <- function(id){
  ns <- NS(id)
  tagList(

  )
}

#' compute Server Functions
#'
#' @noRd
mod_compute_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns

  })
}

## To be copied in the UI
# mod_compute_ui("compute_1")

## To be copied in the server
# mod_compute_server("compute_1")
