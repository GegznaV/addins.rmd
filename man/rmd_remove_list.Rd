% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rmd_lists.R
\name{rmd_remove_list}
\alias{rmd_remove_list}
\title{Remove list-like formatting}
\usage{
rmd_remove_list(context = rs_get_context())
}
\arguments{
\item{context}{(class \code{document_context}) \cr
Object with context of active RStudio document.}
}
\description{
The function removes markup of lists, block quotes and line blocks.
More specifically, removes leading |, >, *, -, + symbols followed by a space or end of line,
leading arabic and Roman numbers, single letters, hash (\verb{#}) or eta \code{@} symbols either followed by a dot or a closing parentheses or enclosed with parentheses. The symbol or the combination must be preceeded with no more than 1 space and followed by either a space or an end of a line, i.e., to be a valid markup, which is interpreted as a list.
}
