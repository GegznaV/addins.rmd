% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rmd_equations.R
\name{rmd_equations}
\alias{rmd_equations}
\alias{rmd_equation_a_inline}
\alias{rmd_equation_b_block}
\alias{rmd_equation_b_block2}
\title{Format as LaTeX equation.}
\usage{
rmd_equation_a_inline(context = rs_get_context())

rmd_equation_b_block(context = rs_get_context())

rmd_equation_b_block2(context = rs_get_context())
}
\arguments{
\item{context}{(class \code{document_context}) \cr
Object with context of active RStudio document.}
}
\description{
Select a piece of text with a cursor and call these functions as an add-in
to enclose the text with special symbols. Text between \verb{$.$} is
interpreted as an inline equation and between \verb{$$.$$} or \verb{\[.\]}
as a block equation in R Markdown.
}
\seealso{
Other R Markdown formatting add-ins: 
\code{\link{format_rmd}},
\code{\link{rmd_code_block}()},
\code{\link{rmd_list}()}
}
\concept{R Markdown formatting add-ins}
