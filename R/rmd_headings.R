#' Format text as R Markdown headings.
#'
#' RStudio add-ins to format text as R Markdown headings and to remove this formatting.
#'
#' @details
#' Function `rmd_heading_remove()` removes heading formatting:
#' either hash-symbol-style headings (i.e., remove leading hash symbols `#`
#' and spaces), or
#' underline-style headings in the first selected row. \cr
#'
#' The other functions, which name beginns with `rmd_heading_`, at first
#' apply `rmd_heading_remove()` to remove heading style (leading hash
#' symbols and underline) and then format the first selected row as a heading
#' of an appropriate level.
#'
#' @param style ("auto", "both", "hash", "underline") indicates which style of heading to remove: \itemize{
#'     \item "both" - removes both heading formatting styles;
#'     \item "hash" - removes hash-style heading formatting only;
#'     \item "underline" - removes underline-style heading formatting only;
#'     \item "auto" - tries to remove only one style: if finds underline style,
#'     removes it, otherwise removes hash-style.
#' }
#'
#' @inheritParams addin.tools::rs_get_index
#'
#' @name rmd_headings
#' @export
rmd_heading_1 <- function(context = rs_get_context()) {
  if (is_rmd_visual_mode()) {
    return()
  } else {
    add_hash_style_heading("# ", context = context)
  }
}

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname rmd_headings
#' @export
rmd_heading_2 <- function(context = rs_get_context()) {
  if (is_rmd_visual_mode()) {
    return()
  } else {
    add_hash_style_heading("## ", context = context)
  }
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname rmd_headings
#' @export
rmd_heading_3 <- function(context = rs_get_context()) {
  if (is_rmd_visual_mode()) {
    return()
  } else {
    add_hash_style_heading("### ", context = context)
  }
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname rmd_headings
#' @export
rmd_heading_4 <- function(context = rs_get_context()) {
  if (is_rmd_visual_mode()) {
    return()
  } else {
    add_hash_style_heading("#### ", context = context)
  }
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname rmd_headings
#' @export
rmd_heading_5 <- function(context = rs_get_context()) {
  if (is_rmd_visual_mode()) {
    return()
  } else {
    add_hash_style_heading("##### ", context = context)
  }
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname rmd_headings
#' @export
rmd_heading_6 <- function(context = rs_get_context()) {
  if (is_rmd_visual_mode()) {
    return()
  } else {
    add_hash_style_heading("###### ", context = context)
  }
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname rmd_headings
#' @export
rmd_heading_1_title <- function(context = rs_get_context()) {
  add_underline_style_heading("=", context = context)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname rmd_headings
#' @export
rmd_heading_2_subtitle <- function(context = rs_get_context()) {
  add_underline_style_heading("-", context = context)
}

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname rmd_headings
#' @export
rmd_heading_remove <- function(style = c("auto", "both", "hash", "underline"),
  context = rs_get_context()) {

  # ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  if (is_rmd_visual_mode()) {
    rstudioapi::sendToConsole(
      'warning("This addin does not work in Markdown Visual Editor (VME) mode. ")',
      execute = TRUE,
      focus = FALSE
    )
    return()
  }
  # ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

  style <- match.arg(style, several.ok = FALSE)
  row <- rs_get_index_first_selected_row(context = context)

  is_underline <- is_underline_style_heading(row, context = context)

  switch(style,
    "underline" = rm_underline_style_heading(row = row, context = context, detected = is_underline),
    "hash" = rm_hash_style_heading(row = row, context = context),
    "both" = {
      rm_underline_style_heading(row = row, context = context, detected = is_underline)
      rm_hash_style_heading(row = row, context = context)
    },
    "auto" =
      if (isTRUE(is_underline)) {
        rm_underline_style_heading(row = row, context = context, detected = is_underline)
      } else {
        rm_hash_style_heading(row = row, context = context)
      }
  )
}

# ============================================================================
rmd_heading_remove_underline <- function(context = rs_get_context()) {
  rmd_heading_remove("underline", context = context)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
rmd_heading_remove_hash_style <- function(context = rs_get_context()) {
  rmd_heading_remove("hash", context = context)
}
# ============================================================================
add_underline_style_heading <- function(symbol = "=", context = rs_get_context()) {
  # ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  if (is_rmd_visual_mode()) {
    rstudioapi::sendToConsole(
      'warning("This addin does not work in Markdown Visual Editor (VME) mode. ")',
      execute = TRUE,
      focus = FALSE
    )
    return()
  }
  # ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

  # len <- nchar(rm_leading_hash(rs_get_first_selected_row(context = context)))
  len <- nchar(rs_get_first_selected_row(context = context))
  len <- max(3, len + 1)
  text <- repeat_symbol(symbol, len)
  rmd_heading_remove(style = "underline", context = context)
  rs_enclose_first_row_with(
    text_below = text,
    ensure_blank_above = TRUE,
    context = context
  )
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
is_underline_style_heading <- function(row, context) {
  # Detect if the line is underline style heading

  # row - index of the heading row
  # context - rstudioapi context
  stringr::str_detect(context$contents[row + 1], "^([-=])(\\1){2,}\\s*$")
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
rm_underline_style_heading <- function(row, context, detected) {
  # Removes the second selected row if it contains underline style
  # formatting of headings.

  # row - index of the heading row
  # context - rstudioapi context
  # detected - logical indicating if the row is underline style heading

  if (isTRUE(detected)) {
    second_selected_row <- rs_get_row_range_w_newline(row + 1)
    rstudioapi::modifyRange(second_selected_row, "", id = context$id)
  }
}
# ============================================================================
add_hash_style_heading <- function(symbol = "# ", context = rs_get_context()) {
  rmd_heading_remove(style = "both", context = context)
  if (nchar(symbol) > 0) {
    rs_insert_before_first_selected_row(symbol,
      ensure_blank_above = TRUE,
      context = context
    )
  }
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
rm_leading_hash <- function(str) {
  stringr::str_replace(str, "^##*\\s*", "")
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
rm_hash_style_heading <- function(row, context) {
  # Removes leading hash symbols and spaces of the first selected row
  first_selected_row <- rs_get_row_range(row)
  text1 <- rm_leading_hash(context$contents[row])
  rstudioapi::modifyRange(first_selected_row, text1, id = context$id)
}
# ============================================================================
rmd_heading_level_down <- function(context = rs_get_context()) {
  if (is_rmd_visual_mode()) {
    return()
  } else {
    rmd_heading_level_change("down", context = context)
  }
}

rmd_heading_level_up <- function(context = rs_get_context()) {
  if (is_rmd_visual_mode()) {
    return()
  } else {
    rmd_heading_level_change("up", context = context)
  }
}

rmd_heading_level_change <- function(direction, context = rs_get_context()) {
  row_txt <- rs_get_first_selected_row(context)
  level <- nchar(stringr::str_extract(row_txt, "^#*"))

  new_level <-
    switch(direction,
      "down" = min(6, level + 1),
      "up" = max(0, level - 1)
  )

  symbol <- stringr::str_dup("#", new_level)
  if (new_level != 0) {
    symbol <- stringr::str_c(symbol, " ")
  }

  add_hash_style_heading(symbol, context = context)
}



