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

# Nice plot of two vectors
plot_vec <- function(x = NULL, y = NULL, from = NULL, to = NULL, mode = 'markers'){
  if (!("plotly" %in% installed.packages()[, "Package"])) {
    install.packages(new.packages, repos = "http://cran.us.r-project.org")
  }
  library(plotly)
  tmp_from <- ifelse(is.null(from), 1, from)
  tmp_to <- ifelse(is.null(to), length(x), to)
  plot_ly(
    x = ~ x[tmp_from:tmp_to],
    y = ~ y[tmp_from:tmp_to],
    name = 'Plot of Y against X',
    type = 'scatter',
    mode = mode
  )
}