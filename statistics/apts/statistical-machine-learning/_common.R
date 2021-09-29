# - To be run before any chapter in the whole repo.
# - Pending multiple chapters executions.

# https://github.com/nclJoshCowley/jcutils
library(jcutils)
data("testdata", package = "jcutils")

ggplot2::theme_set(ggplot2::theme_minimal(base_size = 16))

knitr::opts_chunk$set(
  fig.width = 12,
  fig.asp = 0.7,
  fig.align = "center",
  out.width = "100%"
)

# Below chunk flags to be set explicitly
knitr::opts_chunk$set(
  echo = FALSE,
  message = FALSE,
  cache = FALSE
)