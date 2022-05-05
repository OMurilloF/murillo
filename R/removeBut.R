removeBut <- function(listToNotRemove) {
  rm(list = ls(pos = ".GlobalEnv")[!ls(pos = ".GlobalEnv") %in% listToNotRemove], pos = ".GlobalEnv")
}
