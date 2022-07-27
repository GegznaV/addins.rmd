#' @name addins.rmd
#' @docType package
#'
#' @title RStudio Add-ins for R Markdown
#'
#' @description
#'
#' `addins.rmd` provides a set of RStudio add-ins to format R Markdown documents.
#'
#' `License:` MIT   \cr
#' `URL:` <https://github.com/GegznaV/addins.rmd> \cr
#' `Bug reports and suggestions:` <https://github.com/GegznaV/addins.rmd/issues> \cr
#' `Author:` Vilmantas Gegzna
#'
#' @seealso
#'
#' Use the links below to learn more about RStudio add-ins
#' and especially how to use them in combination with user-defined
#' keyboard shortcuts:
#'
#' 1. [RStudio add-ins](https://rstudio.github.io/rstudioaddins/);
#' 2. [Keyboard shortcuts](https://rstudio.github.io/rstudioaddins/#keyboard-shorcuts);
#' 3. [Customizing keyboard shortcuts.](https://support.rstudio.com/hc/en-us/articles/206382178-Customizing-Keyboard-Shortcuts)
#'
#'
#'
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
