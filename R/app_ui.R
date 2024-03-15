#' The application User-Interface
#'
#' @param request Internal parameter for `{shiny}`.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd

library(shiny)
library(shinipsum)
library(DT)

app_ui <- function(request) {
  tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),
    # Your application UI logic
    fluidPage(
      h2("A Random DT"),
      plotOutput("data_table"),
      h2("A Random Plot"),
      plotOutput("plot"),
      h2("A Random Text"),
      tableOutput("text")
    )
  )
}

#' Add external Resources to the Application
#'
#' This function is internally used to add external
#' resources inside the Shiny application.
#'
#' @import shiny
#' @importFrom golem add_resource_path activate_js favicon bundle_resources
#' @noRd
golem_add_external_resources <- function() {
  add_resource_path(
    "www",
    app_sys("app/www")
  )

  tags$head(
    favicon(),
    bundle_resources(
      path = app_sys("C:/Users/jamie/OneDrive/School/WINTER 2024/FIN 488/SP500App/S&P_Hist_Weight"),
      app_title = "SP500App"
    )
  )
    # Add here other external resources
    # for example, you can add shinyalert::useShinyalert()

}
