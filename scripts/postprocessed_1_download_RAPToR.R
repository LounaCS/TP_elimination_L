install.packages("pls")

if (!requireNamespace("devtools", quietly = TRUE))
  install.packages("devtools")
devtools::install_github("LBMC/RAPToR", build_vignettes = T)
devtools::install_github("LBMC/wormRef")

library(devtools)
devtools::install_github("LBMC/wormRef")