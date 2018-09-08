#' Format text as R Markdown headings.
#'
#' RStudio add-ins to format text as R Markdown headings.
#'
#' @inheritParams addin.tools::rs_get_ind
#'
#' @name rmd_headings
#' @export
rmd_heading_1 <- function(context = rs_get_context()) {
    rs_insert_before_first_selected_row("# ",
                                        ensure_blank_above = TRUE,
                                        context = context)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname rmd_headings
#' @export
rmd_heading_2 <- function(context = rs_get_context()) {
    rs_insert_before_first_selected_row("## ",
                                        ensure_blank_above = TRUE,
                                        context = context)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname rmd_headings
#' @export
rmd_heading_3 <- function(context = rs_get_context()) {
    rs_insert_before_first_selected_row("### ",
                                        ensure_blank_above = TRUE,
                                        context = context)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname rmd_headings
#' @export
rmd_heading_4 <- function(context = rs_get_context()) {
    rs_insert_before_first_selected_row("#### ",
                                        ensure_blank_above = TRUE,
                                        context = context)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname rmd_headings
#' @export
rmd_heading_5 <- function(context = rs_get_context()) {
    rs_insert_before_first_selected_row("##### ",
                                        ensure_blank_above = TRUE,
                                        context = context)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname rmd_headings
#' @export
rmd_heading_6 <- function(context = rs_get_context()) {
    rs_insert_before_first_selected_row("###### ",
                                        ensure_blank_above = TRUE,
                                        context = context)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname rmd_headings
#' @export
rmd_heading_1_title <- function(context = rs_get_context()) {

    text <- repeat_symbol("=", 60)
    rs_enclose_first_row_with(text_below = text,
                              ensure_blank_above = TRUE,
                              context = context)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname rmd_headings
#' @export
rmd_heading_2_subtitle <- function(context = rs_get_context()) {

    text <- repeat_symbol("-", 60)
    rs_enclose_first_row_with(text_below = text,
                              ensure_blank_above = TRUE,
                              context = context)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
