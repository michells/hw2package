% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/log.2.R
\name{log.2}
\alias{log.2}
\title{log.2}
\usage{
\method{log}{`2`}(x)
}
\arguments{
\item{x}{a numeric}
}
\value{
log(x, 10) or an error message if input is negative.
}
\description{
A version of log() that triggers errors with a negative input
}
\examples{
log.2(2)
log.2(-2)
}
