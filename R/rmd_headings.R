#' Format text as R Markdown headings.
#'
#' RStudio add-ins to format text as R Markdown headings.
#'
#' @name rmd_headings
#' @export
rmd_heading_1 <- function() {
    rs_insert_before_first_selected_row("# ",
                                        ensure_blank_above = TRUE)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname rmd_headings
#' @export
rmd_heading_2 <- function() {
    rs_insert_before_first_selected_row("## ",
                                        ensure_blank_above = TRUE)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname rmd_headings
#' @export
rmd_heading_3 <- function() {
    rs_insert_before_first_selected_row("### ",
                                        ensure_blank_above = TRUE)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname rmd_headings
#' @export
rmd_heading_4 <- function() {
    rs_insert_before_first_selected_row("#### ",
                                        ensure_blank_above = TRUE)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname rmd_headings
#' @export
rmd_heading_5 <- function() {
    rs_insert_before_first_selected_row("##### ",
                                        ensure_blank_above = TRUE)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname rmd_headings
#' @export
rmd_heading_6 <- function() {
    rs_insert_before_first_selected_row("###### ",
                                        ensure_blank_above = TRUE)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname rmd_headings
#' @export
rmd_heading_1_title <- function() {

    text <- repeat_symbol("=", 60)
    rs_enclose_first_row_with(text_below = text,
                              ensure_blank_above = TRUE)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname rmd_headings
#' @export
rmd_heading_2_subtitle <- function() {

    text <- repeat_symbol("-", 60)
    rs_enclose_first_row_with(text_below = text,
                              ensure_blank_above = TRUE)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
