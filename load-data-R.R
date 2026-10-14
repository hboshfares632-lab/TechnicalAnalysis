library(quantmod)

load_stock_data <- function(filename = "portfolio.txt") {
  symbols <- readLines(filename)
  stock_data <- list()
  for(sym in symbols) {
    stock_data[[sym]] <- getSymbols(sym, auto.assign = FALSE)
  }
  return(stock_data)
}
