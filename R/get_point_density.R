#' @title get_point_density
#' @description Provided the x,y coordinates of values to be plotted, calculates the density of points on the plot. Intended to be used to color points by density.
#' @param x,y vectors containing coordinates of values to be plotted
#' @param n number of bins for calculating point density
#' @param ... other arguments passed to specific methods
#' @return vector
#' @examples
#'
#' # load packages
#' library(ggplot2); library(ColorByDensity)
#'
#' # create sample data.frame
#' dat <- data.frame(x = runif(n = 2000), y = runif(n=2000) + rnorm(n=2000))
#'
#' # calculate density, provided coordinates and number of bins
#' col <- get_point_density(x=dat$x, y=dat$y, n=20)
#'
#' # plot
#' ggplot(data = dat) + geom_point(aes(x = x, y = y, color = col)) + scale_color_gradientn(colors = rev(rainbow(5)))
#'
#' @export


# create function
get_point_density <- function(x, y, ...) {

  # get density based on choice of n
  point_density <- MASS::kde2d(x, y, ...)

  # sort x-values into n bins
  x_interval    <- findInterval(x, point_density$x)

  # sort y-values into n bins
  y_interval    <- findInterval(y, point_density$y)

  # cbind the sorted values
  binned_vals <- cbind(x_interval, y_interval)

  # return a vector with point density based on binned values
  return(point_density$z[binned_vals])

}
