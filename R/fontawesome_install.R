#' Import and register Lato font
#'
#' \code{fontawesome_install} tests to see if FontAwesome is imported and registered. If FontAwesome, isn't imported and registered, then \code{fontawesome_install} imports and registers FontAwesome with \href{https://github.com/wch/extrafont}{library(extrafont)}.
#'
#' Note: FontAwesome must be installed on your computer for \code{fontawesome_install} to work.
#'
#' Test to see if FontAwesome is imported and registered with \code{fontawesome_test()}.
#'
#' @md
#' @export
fontawesome_install <- function() {
  if (sum(grepl("FontAwesome", extrafont::fonts())) > 0) {
    "FontAwesome is already imported and registered."
  } else {
    extrafont::font_import()
    extrafont::loadfonts()
    fontawesome_test()
  }
}

#' Test for FontAwesome import and registration
#'
#' \code{fontawesome_test} tests to see if FontAwesome is imported and registered. FontAwesome is used for glyphs with \code{library(waffle)} and can be installed from \href{https://github.com/hrbrmstr/waffle/tree/master/inst/fonts}{Bob Rudis's GitHub}.
#'
#' Import and register FontAwesome in R with fontawesome_install().
#'
#' @md
#' @export
fontawesome_test <- function() {
  if (sum(grepl("FontAwesome", extrafont::fonts())) > 0) {
    "FontAwesome is imported and registered."
  } else {
    "FontAwesome isn't imported and registered. Install from GitHub and import and register using fontawesome_install()."
  }
}
