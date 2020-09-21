# ColorByDensity
Color R plots by density

The code for this package is adapted from [Kamil Slowikowski](https://slowkow.com/notes/ggplot2-color-by-density/).


## Installation and usage
To install this package in R, use `devtools::install_github('natedemaagd/ColorByDensity')`. You can then load the package like you would a normal package with `library(ColorByDensity)` and use the function with `get_point_density()`.


## Example
Suppose you have a dataset with a large number of points that are packed tightly together.
```r
library(ggplot2)
set.seed(42)
dat <- data.frame(x = rnorm(3000), y = rnorm(3000))
ggplot(data = dat) + geom_point(aes(x,y))
```
