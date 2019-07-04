#' The Urban Institute [ggplot2] theme
#'
#' Creates a grid object with the Urban Institute logo
#'
#' @import grid
#' @import gridExtra
#' @md
#' @export
cone_logo_text <- function() {
  grobTree(
    gp = gpar(fontsize = 7, hjust = 1),
    textGrob(label = " C O N E",
             name = "caption1",
             x = unit(1, "npc"),
             y = unit(0, "npc"),
             hjust = 1,
             vjust = 0),
    textGrob(label = "M O S E ",
             x = unit(1, "npc") - grobWidth("caption1") - unit(0.001, "lines"),
             y = unit(0, "npc"),
             hjust = 1,
             vjust = 0,
             gp = gpar(col = "#00a2b2"))
  )
}
