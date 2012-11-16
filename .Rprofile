.First <- function() {
    options("device" = "quartz")
    options("editor" = "mate -w")
    options("repos" = c(CRAN = "http://cran.r-project.org/"))
    Sys.setenv("PATH" = paste(Sys.getenv("PATH"),"/usr/texbin",sep=":"))
}

.Last <- function () {
      if (!any(commandArgs() == '--no-readline') && interactive()) {
              require(utils)
    try(savehistory(Sys.getenv("R_HISTFILE")))
      }
}
