
<!-- 

TO DO: 

1. Create an interactive addin, that enables to select formatting options;
2. Write unit tests.
3. Insert link [label](link_location)
4. Insert image ![caption](image_location)
5. Insert image with caption (interactive input through Shiny):

fig_id = sub("\\.","_",
             paste0("fig_ID__", (as.double(Sys.time()))))

<img src="image_location" title="The_caption_of_your_figure_comes_here..." alt="The_caption_of_your_figure_comes_here..." style="display: block; margin: auto;" />

6. Write function to check if there is a space before and after the selection
(for %>% and similar operators)

7. Add possibility not to add list bullets and numbers to the empty rows.

-->

<!-- README.md is generated from README.Rmd. Please edit that file -->

[![MIT
licensed](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/addins.rmd)](https://cran.r-project.org/package=addins.rmd)
[![GitHub
version](https://img.shields.io/badge/GitHub-0.0.1-brightgreen.svg)](https://github.com/GegznaV/addins.rmd)
[![Travis-CI Build
Status](https://travis-ci.org/GegznaV/addins.rmd.png?branch=master)](https://travis-ci.org/GegznaV/addins.rmd)
[![Updated-on](https://img.shields.io/badge/Updated%20on-2018--02--26-yellowgreen.svg)](/commits/master)
[![Research software
impact](http://depsy.org/api/package/cran/addins.rmd/badge.svg)](http://depsy.org/package/r/addins.rmd)

<!-- [![Rdoc](http://www.rdocumentation.org/badges/version/addins.rmd)](http://www.rdocumentation.org/packages/addins.rmd) -->

<!--

-->

-----

<img src="http://gegznav.github.io/addins.rmd/logo.png" align="right" width="15%" height="15%"/>

# R package `addins.rmd`

`addins.rmd` is an R package that provides a set of *RStudio* addins for
*R Markdown*. The main purpose of this package is to alleviate learning
process of *R Markdown* syntax.

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

<!-- Install released version from CRAN: -->

<!-- ```{r Install package from CRAN, eval=FALSE} -->

<!-- install.packages("addins.rmd") -->

<!-- ``` -->

Install development version from GitHub:

``` r
if (!require(devtools)) install.packages("devtools")
devtools::install_github("GegznaV/addins.rmd")
```

<!-- Recommended workflow and a few examples -->

<!-- ----------------------------------------------------- -->

<!-- Get started online http://gegznav.github.io/addins.rmd/articles/v1_workflow.html -->

<!-- And offline: -->

<!-- ```{r, eval=FALSE} -->

<!-- vignette("v1_workflow", package = "addins.rmd") -->

<!-- ``` -->

<!-- browseVignettes("addins.rmd") -->

# Pandoc’s Markdown

*R Markdown* syntax is based on Pandoc’s Markdown syntax:
<https://pandoc.org/MANUAL.html#pandocs-markdown>

-----

More information at <http://gegznav.github.io/addins.rmd/>
