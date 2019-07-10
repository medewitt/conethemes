#' The Urban Institute [ggplot2] theme
#'
#' Creates a grid object with the Urban Institute logo
#'
#' @md
#' @export
cone_logo_text <- function() {
  grid::grobTree(
    gp = grid::gpar(fontsize = 7, hjust = 1),
    grid::textGrob(label = " H E A L T H ",
             name = "caption1",
             x = grid::unit(1, "npc"),
             y = grid::unit(0, "npc"),
             hjust = 1,
             vjust = 0),
    grid::textGrob(label = "C O N E ",
             x = grid::unit(1, "npc") -
               grid::grobWidth("caption1") -
               grid::unit(0.001, "lines"),
             y = grid::unit(0, "npc"),
             hjust = 1,
             vjust = 0,
             gp = grid::gpar(col = "#00a2b2"))
  )
}

#' The Urban Institute [ggplot2] theme
#'
#' Add the Text Logo to the ggplot2 figure
#' @param fig the ggplot item to apply the text logo to
#' @md
#' @export
#'
#'
add_text_logo <- function(fig){
  gridExtra::grid.arrange(fig, cone_logo_text(), ncol = 1, heights = c(30, 1))
}
