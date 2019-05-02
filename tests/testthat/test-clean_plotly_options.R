library(plotly)

p <- plot_ly(data = mtcars, x = ~mpg, type = "histogram")

test_that("input is a plotly object", {
  expect_is(p, "plotly")
})

clean_p <- p %>%
  clean_plotly_options()

test_that("output is a plotly object", {
  expect_is(clean_p, "plotly")
})
