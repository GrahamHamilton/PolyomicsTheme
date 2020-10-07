#' Polyomics Colour Palettes
#'
#' @param ... Params set to NULL
#'
#' @return List of approved Polyomics colour palettes
#'
#' @examples
#' polyomics_palettes <- polyomics_palettes_list()
#' polyomics_palettes
#' @export
#'
#'
polyomics_palettes_list <- function (...){
  polyomics_palettes <- list(
    `main`  = polyomics_cols("University Blue", "Leaf", "Lavender"),
    `cool`  = polyomics_cols("University Blue", "Leaf"),
    `hot`   = polyomics_cols("Sunshine", "Pumpkin", "Pillarbox"),
    `mixed` = polyomics_cols("Lavender","University Blue", "Sunshine", "Pumpkin", "Pillarbox","Thistle"),
    `all` = polyomics_cols("University Blue","Burgundy","Turquiose","Cobalt","Lavender","Leaf","Moss","Pillarbox","Rust","Pumpkin","Sunshine","Sky Blue","Slate","Thistle","Grey","Light Grey","Dark Grey","Black"),
    `grey`  = polyomics_cols("Light Grey", "Dark Grey", "Slate")
  )
  return(polyomics_palettes)
}
