#' @title Draw Cone Health Logo
#' @description Draw Image of Cone
#'
#' @export
#'

cone_logo_pic <- function(){
  logo_fig <- cowplot::ggdraw()+
    cowplot::draw_image(pkg_resource("cone_logo.svg"))

  cowplot::plot_grid(cowplot::ggdraw(),
                     cowplot::ggdraw(),
                     logo_fig, ncol = 3)

}

#' @title Draw Cone Health Logo
#' @description Draw Image of Cone
#'
#' @export
#'
add_pic_logo <- function(fig){
  gridExtra::grid.arrange(fig, cone_logo_pic(), ncol = 1, heights = c(30, 1))
}

