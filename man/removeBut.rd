\name{removeBut}
\alias{removeBut}
\title{Clear workspace, but this variables.}
\usage{
myVars<-c("This", "That")
removeBut(myVars)
}
\arguments{
  \item{listToNotRemove}{An object or a list object containing the objects to keep.}
}
\description{
Clears your workspace of every object except those you tell it not to. Works with single objects or referencing to an object that contains a list. Helpful with debugging.
}
\examples{
removeBut("myVar")
removeBut("myList")
}
