#' The application server-side
#'
#' @param input,output,session Internal parameters for {shiny}.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
#

library(shiny)
library(shinipsum)
library(DT)

app_server <- function(input, output, session) {
  output$data_table <- DT::renderDT({
    random_DT(5, 5)
  })
  output$plot <- renderPlot({
    random_ggplot()
  })
  output$text <- renderText({
    random_text(nwords = 50)
  })
}
shinyApp(app_ui, app_server)

