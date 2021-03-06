% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/connect.R
\name{connect}
\alias{connect}
\title{Creates a connection.}
\usage{
connect(url = "http://www.traitbase.info", user = NULL, pwd = NULL)
}
\arguments{
\item{url}{The base URL to connect to. Default value: https://traitbase.info}

\item{user}{The user credential. Default is set to NULL}

\item{pwd}{The password for the user.}
}
\value{
connect returns a connection object for a Traitbase backend.
This connection object can be used to discover and access to resources.
}
\description{
Setup a connection to a given Traitbase backend with credentials.
}
\examples{
\donttest{
# not run
 cnx <- connect(url = 'http://www.traitbase.info')
}
}
