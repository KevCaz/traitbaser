% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/set_login.R
\name{set_login}
\alias{set_login}
\alias{forget_login}
\alias{get_login}
\title{Login helper function}
\usage{
set_login(user = NULL, pwd = NULL)

forget_login()

get_login(user = NULL, pwd = NULL)
}
\arguments{
\item{user}{a character string containing the user name.}

\item{pwd}{a character string containing the password name.}
}
\description{
Set and forget the user name and the password to be connected to the
Traitbase API.
}
\details{
\code{set_login()} sets the environmental variables  \code{TRAITBASE_USER}, \code{TRAITBASE_PWD}
for the current R session. Note that if you want to set then permanently,
you can add them in \code{.Renviron}, or your \code{.Rprofile} (see \code{Startup}).
\code{set_login()} retrieves \code{TRAITBASE_USER}, \code{TRAITBASE_PWD} and calls \code{set_login()}
if not set.
}
\section{Functions}{
\itemize{
\item \code{set_login}: set the environment variable \code{SPECIESPLUS_TOKEN}.

\item \code{forget_login}: forget the environment variables \code{TRAITBASE_USER' and 'TRAITBASE_PWD}.

\item \code{get_login}: get the environment variables \code{TRAITBASE_USER' and 'TRAITBASE_PWD}, calls
}}

\examples{
\donttest{
 # NB the password below is false.
 set_login(user = 'KevCaz', pwd = 'you')
 # interactively
 forget_login()
}
}
