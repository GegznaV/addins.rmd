# Formatting ------------------------------------------------------------
#   \item \code{rmd_...()} as ... (\code{...} and \code{...});
#   \item \code{rmd_...()} as ... (\code{...} and \code{...});

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Insert various elements
#'
#'
#' @name insert_various_rmd
#' @family R Markdown formatting add-ins
NULL

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname insert_various_rmd
#' @export
rmd_icon_fa_download <- function() {
    rs_enclose_selection_with(symbol_before =
                                  '`r icon::fa("download")`')
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname insert_various_rmd
#' @export
rmd_icon_fa_external_link <- function() {
    rs_enclose_selection_with(symbol_before =
                                  '`r icon::fa("external-link-alt")`')
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname insert_various_rmd
#' @export
rmd_icon_fa_youtube_square <- function() {
    rs_enclose_selection_with(symbol_before =
                                  '`r icon::fa("youtube-square")`')
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname insert_various_rmd
#' @export
rmd_icon_fa_file_pdf <- function() {
    rs_enclose_selection_with(symbol_before =
                                  '`r icon::fa("file-pdf")`')
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
