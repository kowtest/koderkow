test_that("round 2 digits", {
  expect_equal(round_up(12), 20)
})

test_that("round 6 digits", {
  expect_equal(round_up(123456), 130000)
})

test_that("as_dollar string test", {
  expect_type(round_up(124, as_dollar = TRUE), "character")
})
