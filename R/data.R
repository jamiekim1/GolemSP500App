library(readxl)


df <- readxl::read_excel("S&P_Hist_Weight.xlsx")

df$Date <- as.Date(df$Date)


df2 <- df %>%
  tidyr::pivot_longer(-Date, names_to = "Sectors", values_to = "Weights")


sectorDf <- readRDS("Sectors_rets.Rda")


r <- c(df2, sectorDf)

