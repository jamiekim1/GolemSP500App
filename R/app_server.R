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
library(ggplot2)

app_server <- function(input, output, session) {

  r <- reactiveValues()
  # move to server
  mod_Weights_server("mod_Weights_ui", r = r)

  mod_Rets_server("mod_Rets_ui", r = r)

}

 #  output$data_table <- renderPlot({
   #    ggplot2::ggplot(df2, aes(x = Date, y = Weights, col = Sectors)) +
     #  geom_line() +
      # theme_minimal() +
      # theme(axis.line = element_line(color = "black"),
        #     axis.ticks = element_line(color = "black"),
          #   legend.title = element_text(color = "black", size = 10, face = "bold"),
          #   axis.title.x = element_text(color = "black", size = 10),
          #   axis.title.y = element_text(color = "black", size = 10)) +
      # scale_color_discrete(name = "Sectors") +
      # labs(x = "", y = "Sector Weights")
 # })
  # output$plot <- renderPlot({
    # browser()
  #  ggplot(df2, aes(x = Date, y = Weights, fill = Sectors)) +
   #   geom_area() +
    #  facet_wrap(~Sectors, scales = "free_y") +
     # labs(title = "Adjusted Sector Weights", x = "") +
      #theme_minimal()
#  })
  # output$retPlot<- renderPlot({
  #  ggplot(sectorDf, aes(x = date, y = qLogRet, color = sector)) +
   #   geom_line() +
    #  labs(title = "Sector Returns", x = "") +
     # theme_minimal()

 # })

# }





