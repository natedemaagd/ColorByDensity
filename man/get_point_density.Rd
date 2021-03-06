% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_point_density.R
\name{get_point_density}
\alias{get_point_density}
\title{get_point_density}
\usage{
get_point_density(x, y, ...)
}
\arguments{
\item{x, y}{vectors containing coordinates of values to be plotted}

\item{...}{other arguments passed to specific methods}

\item{n}{number of bins for calculating point density}
}
\value{
vector
}
\description{
Provided the x,y coordinates of values to be plotted, calculates the density of points on the plot. Intended to be used to color points by density.
}
\examples{

# load packages
library(ggplot2); library(ColorByDensity)

# create sample data.frame
dat <- data.frame(x = runif(n = 2000), y = runif(n=2000) + rnorm(n=2000))

# calculate density, provided coordinates and number of bins
col <- get_point_density(x=dat$x, y=dat$y, n=20)

# plot
ggplot(data = dat) + geom_point(aes(x = x, y = y, color = col)) + scale_color_gradientn(colors = rev(rainbow(5)))

}
