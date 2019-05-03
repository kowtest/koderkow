
<!-- README.md is generated from README.Rmd. Please edit that file -->

# koderkow

<!-- badges: start -->

[![Travis build
status](https://travis-ci.org/KoderKow/koderkow.svg?branch=master)](https://travis-ci.org/KoderKow/koderkow)
[![AppVeyor build
status](https://ci.appveyor.com/api/projects/status/github/KoderKow/koderkow?branch=master&svg=true)](https://ci.appveyor.com/project/KoderKow/koderkow)
[![Codecov test
coverage](https://codecov.io/gh/KoderKow/koderkow/branch/master/graph/badge.svg)](https://codecov.io/gh/KoderKow/koderkow?branch=master)
<!-- badges: end -->

This is my package that houses functions I find myself frequently using.
I am also using this package to learn about building flexible and robust
packages :)

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

### round\_up

Round whole numbers up. This function will always round up to the number
place second to the left:

``` r
round_up(123456)
#> [1] 130000
```

Number with only 2 numeric places (tens), then it will round on the tens
position value:

``` r
round_up(19)
#> [1] 20
```

If needed, we can change the value to a dollar amount. Using `as_dollar
= TRUE` will change the numeric value to a character:

``` r
round_up(1991, as_dollar = TRUE)
#> [1] "$2,000"
```
