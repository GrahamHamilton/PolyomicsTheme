#' Polyomics Palettes
#'
#' @description Returns a list of colours from a set colour palette list
#'
#' @param palette NAmed colour palette to use
#' @param reverse Reverse the order of the colour list
#' @param ... Params set to NULL
#'
#' @return Returns a list of colours from a set colour palette list
#'
#' @import ggplot2
#'
#' @examples
#' # Get the list of Polyomics colours
#' polyomics_colors <- polyomics_colours()
#' # Get the list of Polyomics colour palettes
#' polyomics_palettes <- polyomics_palettes_list()
#'
#' # Set the number of colours to retrieve
#' levels <- 3
#'
#' # Set the palette to use
#' cols <- polyomics_pal("hot")(levels)
#'
#' # Display the colour palettes
#' n_seq <- seq_along(cols)
#' image(n_seq, 1, as.matrix(n_seq), col = cols,
#'       xlab = "", ylab = "", xaxt = "n", yaxt = "n", bty = "n",
#'       main = "Cool palette of polyomics Inc")
#' text(n_seq, 1, cols, col = "white", srt = 90)
#'
#' @export

polyomics_pal <- function(palette = "main", reverse = FALSE, ...) {

  pal <- polyomics_palettes[[palette]]

  if (reverse) pal <- rev(pal)

  colorRampPalette(pal, ...)
}
