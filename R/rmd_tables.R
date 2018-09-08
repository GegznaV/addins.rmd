# Tables ---------------------------------------------------------------------

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @name rmd_tables
#' @title Insert R Markdown tables
#' @description Insert examples of R Markdown tables.
NULL

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname rmd_tables
rmd_table_style_md <- function() {
    rs_enclose_first_row_with(text_above = tbl_md)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname rmd_tables
rmd_table_style_md_alternative <- function() {
    rs_enclose_first_row_with(text_above = tbl_md_alternative)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname rmd_tables
rmd_table_style_multiline <- function() {
    rs_enclose_first_row_with(text_above = tbl_multiline)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname rmd_tables
rmd_table_style_multiline_no_colnames <- function() {
    rs_enclose_first_row_with(text_above = tbl_multiline_no_colnames)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname rmd_tables
rmd_table_style_simple <- function() {
    rs_enclose_first_row_with(text_above = tbl_simple)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname rmd_tables
rmd_table_style_grid <- function() {
    rs_enclose_first_row_with(text_above = tbl_grid)
}




# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
tbl_simple <- c(
    "

Left-aligned      Centered column       Right-aligned
--------------  -------------------  ----------------
Row_1_Col_1        Row_1_Col_2          Row_1_Col_3
Row_2_Col_1        Row_2_Col_2          Row_2_Col_3
Row_3_Col_1        Row_3_Col_2          Row_3_Col_3

: The name of the simple-style table.

")
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
tbl_md <- c(
    "

Auto-aligned  | Left-aligned  |   Centered    | Right-aligned
------------- | :------------ | :-----------: | ------------:
 Row_1_Col_1  |  Row_1_Col_2  |  Row_1_Col_3  |  Row_1_Col_4
 Row_2_Col_1  |  Row_2_Col_2  |  Row_2_Col_3  |  Row_2_Col_4
 Row_3_Col_1  |  Row_3_Col_2  |  Row_3_Col_3  |  Row_3_Col_4

: The name of the markdown-style table.

")
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

tbl_md_alternative <- c(
"

| Auto-aligned  | Left-aligned  |   Centered    | Right-aligned |
| ------------- | :------------ | :-----------: | ------------: |
|  Row_1_Col_1  |  Row_1_Col_2  |  Row_1_Col_3  |  Row_1_Col_4  |
|  Row_2_Col_1  |  Row_2_Col_2  |  Row_2_Col_3  |  Row_2_Col_4  |
|  Row_3_Col_1  |  Row_3_Col_2  |  Row_3_Col_3  |  Row_3_Col_4  |

: The name of the markdown-style table.

")

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
tbl_multiline <- c(
"

-----------------------------------------------------
Left-aligned      Centered column      Right-aligned
---------------- -----------------  ----------------
Row_1_Col_1        Row_1_Col_2         Row_1_Col_3

Row_2_Col_1        Row_2_Col_2         Row_2_Col_3

Row_3_Col_1        Row_3_Col_2         Row_3_Col_3
-----------------------------------------------------

: The name of the multi-row table.

")

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
tbl_multiline_no_colnames <- c(
"

--------------  -----------------  ----------------
Row_1_Col_1        Row_1_Col_2          Row_1_Col_3

Row_2_Col_1        Row_2_Col_2          Row_2_Col_3

Row_3_Col_1        Row_3_Col_2          Row_3_Col_3
--------------  -----------------  ----------------

: The name of the table without column names.

")

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
tbl_grid <- c(
"

+---------------+---------------+--------------------+
| Right-aligned |  Centered     |  Auto-aligned      |
+==============:+:=============:+====================+
| Row_1_Col_1   | Row_1_Col_2   | - Row_1_Col_3a     |
|               |               | - Row_1_Col_3b     |
+---------------+---------------+--------------------+
| Row_2_Col_1   | Row_2_Col_2   | - Row_2_Col_3a     |
|               |               | - Row_2_Col_3b     |
+---------------+---------------+--------------------+

:  The name of the grid-style table.

")
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
