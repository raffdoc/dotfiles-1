.First <- function() {
    library(ggplot2)
    options("device" = "quartz")
    options("repos" = c(CRAN = "http://cran.r-project.org/"))
    options("editor" = "/usr/local/bin/vim")
}

.Last <- function () {
      if (!any(commandArgs() == '--no-readline') && interactive()) {
              require(utils)
    try(savehistory(Sys.getenv("R_HISTFILE")))
      }
}
