# Scripts for easier plotting

# Nice plot of a function in plotly

plot_fct <- function(f, from = NULL, to = NULL, n = 101){
  if (!("plotly" %in% installed.packages()[, "Package"])) {
    install.packages(new.packages, repos = "http://cran.us.r-project.org")
  }
  library(plotly)
  x <- seq(from, to, length.out = n)
  tmp <- data.frame(x = x, y = f(x))
  plot_ly(
    tmp,
    x = ~ x,
    y = ~ y,
    name = 'Plot of f',
    type = 'scatter',
    mode = 'lines'
  )
}