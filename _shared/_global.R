# ------------------------------------------------------------------------|
# This script is ran before each chapter across all books and should be
# used to set consistent output options
#
# Josh Cowley <https://github.com/nclJoshCowley/notebook>
# ------------------------------------------------------------------------|

# - Packages

# CRAN
library(dplyr)

# https://github.com/nclJoshCowley/jcutils
library(jcutils)


# - Plot options

ggplot2::theme_set(ggplot2::theme_minimal(base_size = 16))

knitr::opts_chunk$set(
  fig.width = 12,
  fig.asp = 0.65,
  fig.align = "center",
  out.width = "100%"
)


# - Control options

knitr::opts_chunk$set(
  comment = ">",
  echo = FALSE,
  message = FALSE,
  cache = FALSE
)