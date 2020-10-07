#' Fill scale constructor for Polyomics colors
#'
#' @param palette Character name of palette in polyomics_palettes
#' @param discrete Boolean indicating whether color aesthetic is discrete or not
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments passed to discrete_scale() or
#'            scale_fill_gradientn(), used respectively when discrete is TRUE or FALSE
#'
#' @import ggplot2
#'
#' @examples
#' ggplot(mpg, aes(manufacturer, fill = manufacturer)) +
#' geom_bar() +
#'   theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
#'  polyomics_scale_fill(palette = "grey", guide = "none")
#'
#' @export
polyomics_scale_fill <- function(palette = "main", discrete = TRUE, reverse = FALSE, ...) {
  pal <- polyomics_pal(palette = palette, reverse = reverse)

  if (discrete) {
    ggplot2::discrete_scale("fill", paste0("polyomics_", palette), palette = pal, ...)
  } else {
    ggplot2::scale_fill_gradientn(colours = pal(256), ...)
  }
}
