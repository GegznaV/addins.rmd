# Equations -------------------------------------------------------------------
#' Format as LaTeX equation.
#'
#' Select a piece of text with a cursor and call these functions as an add-in
#' to enclose the text with special symbols. Text between \code{$.$} is
#' interpreted as an inline equation and between \code{$$.$$} or \code{\[.\]}
#' as a block equation in R Markdown.
#'
#' @name rmd_equations
#' @family R Markdown formatting add-ins
NULL

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname rmd_equations
#' @export
rmd_equation_a_inline <- function() {
    rs_enclose_selection_with(symbol = "$")
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname rmd_equations
#' @export
rmd_equation_b_block <- function() {
    rs_enclose_selection_with(symbol = "$$")
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname rmd_equations
#' @export
rmd_equation_b_block2 <- function() {
    rs_enclose_selection_with(symbol_before = "\\[", symbol_after = "\\]")
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
