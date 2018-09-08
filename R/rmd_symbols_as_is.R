# Formatting ------------------------------------------------------------
#   \item \code{rmd_...()} as ... (\code{...} and \code{...});
#   \item \code{rmd_...()} as ... (\code{...} and \code{...});

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Escaped symbols
#'
#' @seealso
#' https://pandoc.org/MANUAL.html#backslash-escapes
#'
#' @name format_rmd
#'
#' @inheritParams addin.tools::rs_get_ind
#'
#' @family R Markdown formatting add-ins
NULL

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname format_rmd
#' @export
rmd_symbol_asterisk <- function(context = rs_get_context()) {
    rs_insert_text(text = "\\*", context = context, spaces = FALSE)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname format_rmd
#' @export
rmd_symbol_backslash <- function(context = rs_get_context()) {
    rs_insert_text(text = "\\\\", context = context, spaces = FALSE)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname format_rmd
#' @export
rmd_symbol_underscore <- function(context = rs_get_context()) {
    rs_insert_text(text = "\\_", context = context, spaces = FALSE)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#' @rdname format_rmd
#' @export
rmd_symbol_dollar <- function(context = rs_get_context()) {
    rs_insert_text(text = "\\$", context = context, spaces = FALSE)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#' @rdname format_rmd
#' @export
rmd_symbol_en_dash <- function(context = rs_get_context()) {
    rs_insert_text(text = "--", context = context, spaces = FALSE)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#' @rdname format_rmd
#' @export
rmd_symbol_em_dash <- function(context = rs_get_context()) {
    rs_insert_text(text = "---", context = context, spaces = FALSE)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
