% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/importDataset.R
\name{importDataset}
\alias{importDataset}
\title{Imports a dataset into Traitbase.}
\usage{
importDataset(cnx, csvData)
}
\arguments{
\item{cnx}{The connection to traitbase service.}

\item{csvData}{The data in cvs format (string)}
}
\value{
Returns a list of errors if any. valid=(true|false), imported=false
}
\description{
Imports a dataset into Traitbase.
}
\examples{
\donttest{
cnx <- connect('http://www.traitbase.info')
fpath <- system.file('extdata', 'sample-error.csv', package='traitbaser')
csvData <- readLines(fpath)
errors <- importDataset(cnx, csvData)
}
}
