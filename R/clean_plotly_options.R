#' Remove Plotly Options on Plots
#'
#' @importFrom plotly config
#'
#' @param p a plotly object
#'
#' @return a plotly object with all options besides 'download as png' on plotly plot
#' @export
#'
#' @examples
#' # not run:
#' # p %>%
#' #   clean_plotly_options()
clean_plotly_options <- function(p) {
  p %>%
    config(displaylogo = FALSE,
           modeBarButtonsToRemove = list("sendDataToCloud", "zoom2d", "pan2d", "select2d", "lasso2d", "zoomIn2d", "zoomOut2d", "autoScale2d", "resetScale2d", "hoverClosestCartesian", "hoverCompareCartesian", "toggleSpikelines"))
}
