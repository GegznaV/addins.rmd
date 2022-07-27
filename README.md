
<!-- README.md is generated from README.Rmd. Please edit that file -->
<!-- badges: start -->

[![MIT
licensed](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/addins.rmd)](https://cran.r-project.org/package=addins.rmd)
[![GitHub
version](https://img.shields.io/badge/GitHub-0.0.13-brightgreen.svg)](https://github.com/GegznaV/addins.rmd)
[![R-CMD-check](https://github.com/GegznaV/addins.rmd/workflows/R-CMD-check/badge.svg)](https://github.com/GegznaV/addins.rmd/actions)
[![Updated-on](https://img.shields.io/badge/Updated%20on-2022--07--28-yellowgreen.svg)](/commits/master)
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

## Install Package

Install package from CRAN-like repository:

``` r
repos <- c("https://mokymai.github.io/download/", getOption("repos"))
install.packages("addins.rmd", repos = repos)
```

<details>
<summary>
Install from GitHub
</summary>

Install development version from GitHub:

``` r
if (!require(remotes)) {
  install.packages("remotes")
}

remotes::install_github("GegznaV/addin.tools")
remotes::install_github("GegznaV/addins.rmd")
```

</details>

# How to Use Thse Add-ins

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

<img src="https://gegznav.github.io/addins.rmd/figs/steps-search-addins.png" title="**Fig. 1.** Steps to find addins of the package **addins.rmd**.  " alt="**Fig. 1.** Steps to find addins of the package **addins.rmd**.  " width="400" />

Below you can find a few examples how to use the add-ins of the package.

## Convert Text into Headings

<img src="https://gegznav.github.io/addins.rmd/figs/demo-headings-1.gif" title="**Fig. 2.** **Demonstration 1: headings.**
Place a cursor with a mouse and use a necessary add-in.
*(In this demonstrations, older version of the package is used.)*" alt="**Fig. 2.** **Demonstration 1: headings.**
Place a cursor with a mouse and use a necessary add-in.
*(In this demonstrations, older version of the package is used.)*" width="600" />

<br>

<img src="https://gegznav.github.io/addins.rmd/figs/demo-headings-2.gif" title="**Fig. 3.** Demonstration 2: headings.** Notice that, if needed, a blank line above the selection is added.  " alt="**Fig. 3.** Demonstration 2: headings.** Notice that, if needed, a blank line above the selection is added.  " width="600" />

## Basic Text Formatting

<img src="https://gegznav.github.io/addins.rmd/figs/demo-formatting-1.gif" title="**Fig. 4.** **Demonstration 3: basic formatting.**
Before using this type of add-in, select a piece of text that should be formatted.
*(In this demonstrations, older version of the package is used.)*  " alt="**Fig. 4.** **Demonstration 3: basic formatting.**
Before using this type of add-in, select a piece of text that should be formatted.
*(In this demonstrations, older version of the package is used.)*  " width="600" />

## Create Lists

<img src="https://gegznav.github.io/addins.rmd/figs/demo-lists-1.gif" title="**Fig. 5.** **Demonstration 4: lists.**
The lists can be numbered and unnumbered.
They can have several levels.
*(In this demonstrations, older version of the package is used.)*  " alt="**Fig. 5.** **Demonstration 4: lists.**
The lists can be numbered and unnumbered.
They can have several levels.
*(In this demonstrations, older version of the package is used.)*  " width="600" />

## Create R Code Chunks

<img src="https://gegznav.github.io/addins.rmd/figs/demo-chunk-add-1.gif" title="**Fig. 6.** **Demonstration 5: R code chunks.**
Select one or several lines with code, select an appropriate add-in and include code into a chunk.  " alt="**Fig. 6.** **Demonstration 5: R code chunks.**
Select one or several lines with code, select an appropriate add-in and include code into a chunk.  " width="600" />

# See Also

Use the links below to learn more about RStudio add-ins and especially
how to use them in combination with user-defined keyboard shortcuts:

1.  [RStudio add-ins](https://rstudio.github.io/rstudioaddins/);
2.  [Keyboard
    shortcuts](https://rstudio.github.io/rstudioaddins/#keyboard-shorcuts);
3.  [Customizing keyboard
    shortcuts.](https://support.rstudio.com/hc/en-us/articles/206382178-Customizing-Keyboard-Shortcuts)

## Pandoc’s Markdown

*R Markdown* syntax is based on Pandoc’s Markdown syntax. If you need
more advanced formatting options, please, read more at:

-   <a href="https://pandoc.org/MANUAL.html#pandocs-markdown"
    target="_blank">https://pandoc.org/MANUAL.html#pandocs-markdown</a>

------------------------------------------------------------------------

Online docuentation at <http://gegznav.github.io/addins.rmd/>
