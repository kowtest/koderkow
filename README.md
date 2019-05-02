
<!-- README.md is generated from README.Rmd. Please edit that file -->

# koderkow

<!-- badges: start -->

[![Travis build
status](https://travis-ci.org/KoderKow/koderkow.svg?branch=master)](https://travis-ci.org/KoderKow/koderkow)
[![Codecov test
coverage](https://codecov.io/gh/KoderKow/koderkow/branch/master/graph/badge.svg)](https://codecov.io/gh/KoderKow/koderkow?branch=master)
<!-- badges: end -->

This is my packages that houses functions I find myself frequently using

## Installation

Download from GitHub:

``` r
devtools::install_github("KoderKow/koderkow")
```

## Example

### Load the Package

``` r
library(koderkow)
```

### clean\_plotly\_options

Default `plot_ly()`
output:

``` r
p <- plot_ly(data = mtcars, x = ~mpg, y = ~hp, type = "scatter", mode = "markers")
p
```

<center>

<img src="https://i.imgur.com/24fNBRP.png" width="60%" />

</center>

Remove icons on top of the plot:

``` r
p %>% 
  clean_plotly_options()
```

<center>

<img src="https://i.imgur.com/gnIeKoU.png" width="60%" />

</center>
