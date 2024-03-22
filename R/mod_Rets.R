#' Rets UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#' @param r a list returning returning reactiveValues given the choice of port.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
#'
#'
mod_Rets_ui <- function(id){
  ns <- NS(id)

  tagList(
    shiny::tabsetPanel(
      shiny::tabPanel(
        shiny::h2(ns("Sector_Returns")),
        shiny::plotOutput(ns("data_table"))
      )
    )
  )
}




#' Rets Server Functions
#'
#' @noRd
mod_Rets_server <- function(id, r){


  moduleServer(id, function(input, output, session){


    ns <- session$ns

    r$sector

    df <- readxl::read_excel("S&P_Hist_Weight.xlsx")
    df$Date <- as.Date(df$Date)
    df2 <- df %>%
      tidyr::pivot_longer(-Date, names_to = "Sectors", values_to = "Weights")



  })
}

## To be copied in the UI
# mod_Rets_ui("Rets_1")

## To be copied in the server
# mod_Rets_server("Rets_1")
