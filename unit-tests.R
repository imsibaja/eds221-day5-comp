library(testthat)
library(devtools)
library(remotes)

rm(list=ls())

mean_range <- function(df){
  col_mean <- apply(X =df, MARGIN = 2, FUN=mean, na.rm=TRUE)
  col_mean_max <- max(col_mean)
  col_mean_min <- min(col_mean)
  
  return(c(col_mean_min, col_mean_max))
}

mean_range(mtcars)

expect_length(mean_range(mtcars), 2)


expect_true(mean_range(mtcars)[1]<mean_range(mtcars)[2])
