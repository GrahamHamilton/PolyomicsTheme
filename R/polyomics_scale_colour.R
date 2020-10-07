#' Polyomics Scale Colour
#'
#' @description Color scale constructor for polyomics colors
#'
#' @param palette Character name of palette in polyomics_palettes
#' @param discrete Boolean indicating whether color aesthetic is discrete or not
#' @param reverse Boolean to reverse the order of the colour palette
#' @param ... Params set to NULL
#'
#' @import ggplot2
#'
#' @return
#'
#' @examples
#' library(ggplot2)
#' plot <- ggplot(iris, aes(Sepal.Width, Sepal.Length, color = Species)) +
#' geom_point(size = 4) +
#' polyomics_scale_color(palette = "mixed")
#'
#' @export
polyomics_scale_colour <- function(palette = "main", discrete = TRUE, reverse = FALSE, ...) {
  pal <- PolyomicsColours::polyomics_pal(palette = palette, reverse = reverse)

  if (discrete) {
    ggplot2::discrete_scale("colour", paste0("polyomics_", palette), palette = pal, ...)
  } else {
    ggplot2::scale_color_gradientn(colours = pal(256), ...)
  }
}
