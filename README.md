
<!-- README.md is generated from README.Rmd. Please edit that file -->
<!-- badges: start -->

[![MIT
licensed](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/addins.rmd)](https://cran.r-project.org/package=addins.rmd)
[![GitHub
version](https://img.shields.io/badge/GitHub-0.0.11-brightgreen.svg)](https://github.com/GegznaV/addins.rmd)
[![R-CMD-check](https://github.com/GegznaV/addins.rmd/workflows/R-CMD-check/badge.svg)](https://github.com/GegznaV/addins.rmd/actions)
[![Updated-on](https://img.shields.io/badge/Updated%20on-2022--03--27-yellowgreen.svg)](/commits/master)
<!-- badges: end -->

------------------------------------------------------------------------

<!-- 

-->

<img src="http://gegznav.github.io/addins.rmd/logo.png" align="right" width="15%" height="15%"/>

# R package **addins.rmd**

Package `addins.rmd` is an *R* package that provides a set of *RStudio*
add-ins for *R Markdown*. The main purpose of this package is to
alleviate learning process of *R Markdown* syntax.

<!-- 
1) **format text in R Markdown documents**:
    - **enclose** either selected text or selected rows with special symbols and text gets inerpreted in a special way when rendered with R Markdown (e.g., converts "bold" into "\*\*bold\*\*"
that is interpreted as "**bold**").
2) **insert** text (e.g., operators `%>%`, `<<-`, `%$%`) at the cursor position;
3)  **replace** symbols in selected
pieces of text (e.g., convert backslashes to forward slashes which results
in strings like `"c:\data\"` converted into `"c:/data/"`).
-->

## Install package

<!-- 
Install released version from CRAN: 

```r
install.packages("addins.rmd")
```
-->

Install development version from GitHub:

``` r
if (!require(remotes)) {install.packages("remotes")}

remotes::install_github("GegznaV/addin.tools")
remotes::install_github("GegznaV/addins.rmd")
```

<br>

# How to use thse add-ins

<!-- 
Recommended workflow and a few examples
-----------------------------------------------------

Get started online http://gegznav.github.io/addins.rmd/articles/v1_workflow.html

And offline:

```r
vignette("v1_workflow", package = "addins.rmd")
```
browseVignettes("addins.rmd") 
-->

For the current version of the package:

1)  Find and click *RStudio* “Addins” button;
2)  Type **`{Rmd}`** in the add-ins search box;
3)  All the add-ins of the package **addins.rmd** will be displayed in
    the drop-down list below.

![**Fig. 1.** Steps to find addins of the package
**addins.rmd**.](https://raw.githubusercontent.com/GegznaV/addins.rmd/master/docs/figs/steps-search-addins.png)

Below you can find a few examples how to use the add-ins of the package.

## Convert text into headings

![**Fig. 2.** **Demonstration 1: headings.** Place a cursor with a mouse
and use a necessary add-in.  
*(In this demonstrations, older version of the package is
used.)*](https://raw.githubusercontent.com/GegznaV/addins.rmd/master/docs/figs/demo-headings-1.gif)

<br>

![**Fig. 3.** Demonstration 2: headings.\*\* Notice that, if needed, a
blank line above the selection is
added.](https://raw.githubusercontent.com/GegznaV/addins.rmd/master/docs/figs/demo-headings-2.gif)

<br><br>

## Basic text formatting

![**Fig. 4.** **Demonstration 3: basic formatting.** Before using this
type of add-in, select a piece of text that should be formatted.  
*(In this demonstrations, older version of the package is
used.)*](https://raw.githubusercontent.com/GegznaV/addins.rmd/master/docs/figs/demo-formatting-1.gif)

<br><br>

## Create lists

![**Fig. 5.** **Demonstration 4: lists.** The lists can be numbered and
unnumbered. They can have several levels. *(In this demonstrations,
older version of the package is
used.)*](https://raw.githubusercontent.com/GegznaV/addins.rmd/master/docs/figs/demo-lists-1.gif)

<br><br>

## Create R code chunks

![**Fig. 6.** **Demonstration 5: R code chunks.** Select one or several
lines with code, select an appropriate add-in and include code into a
chunk.](https://raw.githubusercontent.com/GegznaV/addins.rmd/master/docs/figs/demo-chunk-add-1.gif)

# Pandoc’s Markdown

*R Markdown* syntax is based on Pandoc’s Markdown syntax. If you need
more advanced formatting options, please, read more at:

-   <a href="https://pandoc.org/MANUAL.html#pandocs-markdown"
    target="_blank">https://pandoc.org/MANUAL.html#pandocs-markdown</a>

------------------------------------------------------------------------

More information at <http://gegznav.github.io/addins.rmd/>
