library(devtools)
library("cerebroViz")
####install_github("ethanbahl/cerebroViz")

vignette(topic="intro_cerebroViz", package="cerebroViz")
data(cerebroEx)
head(cerebroEx)[, c(1:7)]
cerebroViz(cerebroEx)
