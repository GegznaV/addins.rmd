#' @keywords internal
"_PACKAGE"

## usethis namespace: start
#' @import addin.tools
## usethis namespace: end
NULL

.onLoad <- function(libname, pkgname) {
  packageStartupMessage(
    crayon::blue("Package '"),
    crayon::green("addins.rmd"),
    crayon::blue("' was loaded.")
  )
}
