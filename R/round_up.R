#' Round a Whole Number Up
#'
#' This was made for reactive UI range to display clean numbers
#'
#' @importFrom scales dollar
#'
#' @param x a number to round
#' @param as_dollar boolean, TRUE to make value with a leading $ and commas where appropiate in the number
#'
#' @return a rounded numeric or a rounded character if as_dollar == TRUE
#' @export
#'
#' @examples
#' round_up(123456789)
#'
#' round_up(5125, as_dollar = TRUE)
round_up <- function (x, as_dollar = FALSE) {

  if (nchar(x) > 2) {
    round_to <- as.numeric(paste0(1, paste0(rep(0, nchar(x) - 2), collapse = ""), collapse = ""))

    round_value <- ceiling(x / round_to) * round_to

  } else {
    round_value <- ceiling(x / 10) * 10
  }

  if(as_dollar) {
    scales::dollar(round_value)

  } else {
    format(round_value, scientific = FALSE)
    round_value
  }

}
