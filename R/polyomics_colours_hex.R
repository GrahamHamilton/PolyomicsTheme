#' Polyomics colours hexadecimal list
#'
#' @param ... Passed in colours
#'
#' @return List of colours and their hexadecimal values
#' @export
#'
#'
polyomics_cols <- function(...) {
  poly_colours <- polyomics_colours()

  cols <- c(...)

  if (is.null(cols))
    return (poly_colours)

  poly_colours[cols]
}
