\name{createFullFormula}
\alias{createFullFormula}
\title{createFullFormula}
\usage{
  createFullFormula(localDT, responseVariable)
}
\arguments{
  \item{localDT}{dataframe of potential input variables to
  model}

  \item{responseVariable}{string column header of single
  response variable to model}
}
\value{
  kitchenSink text string of formula that includes all
  variables and log variables
}
\description{
  Creates text for the 'kitchen sink' formula.
}
\examples{
DTComplete <- DTComplete
UV <- UV
QWcodes <- QWcodes
response <- QWcodes$colName[1]
DT <- DTComplete[c(response,getPredictVariables(names(UV)), "decYear","sinDY","cosDY","datetime")]
DT <- na.omit(DT)
kitchenSink <- createFullFormula(DT,response)
}
\keyword{residuals}
\keyword{studentized}

