.onAttach <- function(libname, pkgname) {

  # set os options
  if (.Platform$OS.type == "windows") {
    packageStartupMessage("Setting Windows options...")
    grDevices::windows.options(width = 8.33333333333333,
                               height = 5.55555555555556)
    grDevices::windowsFonts(Lato = grDevices::windowsFont("Lato"))
    grDevices::windowsFonts(FontAwesome = grDevices::windowsFont("FontAwesome"))
  } else {
    packageStartupMessage("Setting Mac/Linux options...")
    grDevices::quartz.options(width = 8.33333333333333,
                              height = 5.55555555555556,
                              dpi = 72)
  }

  # check ggplot2 version
  if (unlist(utils::packageVersion("ggplot2"))[1] < 3) {
    packageStartupMessage(
      "Warning: conethemes requires ggplot2 version 3.0.0 or higher."
    )
  }
}

# Retrieve Access to files in the package
pkg_resource <- function(...){
    system.file( ..., package = 'conethemes', mustWork = TRUE)
}





