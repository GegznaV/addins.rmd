# Code -------------------------------------------------------------------
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @name rmd_code_block
#' @title Convert rows into the block of code.
#' @description
#' RStudio add-in to insert selected lines into code block: \itemize{
#'    \item \code{rmd_code_block()} - verbatim code block.
#'          **Note:** in Markdown Visual Editor mode does not work.
#'    \item \code{rmd_code_block_r()} - R code block.
#'          **Note!** In Markdown Visual Editor (MVE) mode works differently:
#'          in MVE mode, RStudio IDE command
#'          [`insertChunk`](https://docs.rstudio.com/ide/server-pro/rstudio_ide_commands/rstudio_ide_commands.html)
#'          is executed, which currently means that non-selected text will not
#'          be included in the chunk automatically. If the chunk is included as
#'          the last line of the document in MVE mode, the selected text is
#'          interpreted as chunk options, otherwise as chunk contents.
#' }
#' \code{rmd_code_block_r_split()} - splits block of R code.
#'
#'
#' These functions internally use function
#' \code{\link[addin.tools]{rs_enclose_selected_rows_with}()} -
#' that adds lines above and below the selection.
#'
#' @importFrom addin.tools rs_get_context is_rmd_visual_mode
#'
#' @inheritParams addin.tools::rs_get_index
#'
#' @family R Markdown formatting add-ins
NULL

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname rmd_code_block
#' @export
rmd_code_block_r <- function(context = rs_get_context()) {
  if (is_rmd_visual_mode()) {
    id <- context$id
    text <- rstudioapi::selectionGet(id = id)$value
    rstudioapi::executeCommand("insertChunk", quiet = TRUE)
    rstudioapi::selectionSet(text, id = id)
  } else {
    rs_enclose_selected_rows_with(
      text_above = "```{r}",
      text_below = "```",
      context = context
    )
  }
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname rmd_code_block
#' @export
rmd_code_block <- function(context = rs_get_context()) {
  if (is_rmd_visual_mode()) {
    stop("This addin does not work in Markdown visual editor mode")
  } else {
    rs_enclose_selected_rows_with(
      text_above = "```",
      text_below = "```",
      context = context
    )
  }
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname rmd_code_block
#' @export
rmd_code_block_r_split <- function(context = rs_get_context()) {
  if (is_rmd_visual_mode()) {
    stop("This addin does not work in Markdown visual editor mode")
  } else {
    rs_enclose_selected_rows_with(
      text_above = "```\n\n```{r}",
      context = context
    )
  }
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
