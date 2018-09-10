# Code -------------------------------------------------------------------
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @name rmd_code_block
#' @title Convert rows into the block of code.
#' @description
#' RStudio add-in to insert selected lines into code block: \itemize{
#'    \item \code{rmd_code_block()} - verbatim code block;
#'    \item \code{rmd_code_block_r()} - R code block.
#' }.
#' \code{rmd_code_block_r_split()} - splits block of R code.
#'
#'
#' These functions internally use function
#' \code{\link[addin.tools]{rs_enclose_selected_rows_with}()} -
#' that adds lines above and below the selection.
#'
#' @inheritParams addin.tools::rs_get_index
#'
#' @family R Markdown formatting add-ins
NULL

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname rmd_code_block
#' @export
rmd_code_block_r <- function(context = rs_get_context()) {
    rs_enclose_selected_rows_with(text_above = "```{r}",
                                  text_below = "```",
                                  context = context)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname rmd_code_block
#' @export
rmd_code_block <- function(context = rs_get_context()) {
    rs_enclose_selected_rows_with(text_above = "```",
                                  text_below = "```",
                                  context = context)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname rmd_code_block
#' @export
rmd_code_block_r_split <- function(context = rs_get_context()) {
    rs_enclose_selected_rows_with(text_above = "```\n\n```{r}",
                                  context = context)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
