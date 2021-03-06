% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/exports.R
\docType{methods}
\name{min_entries}
\alias{min_entries}
\alias{min}
\alias{min.Expression}
\title{Minimum}
\usage{
min_entries(x, axis = NA_real_)

\method{min}{Expression}(..., na.rm = FALSE)
}
\arguments{
\item{x}{An \linkS4class{Expression}, vector, or matrix.}

\item{axis}{(Optional) The dimension across which to apply the function: \code{1} indicates rows, \code{2} indicates columns, and \code{NA} indicates rows and columns. The default is \code{NA}.}

\item{...}{Numeric scalar, vector, matrix, or \linkS4class{Expression} objects.}

\item{na.rm}{(Unimplemented) A logical value indicating whether missing values should be removed.}
}
\value{
An \linkS4class{Expression} representing the minimum of the input.
}
\description{
The minimum of an expression.
}
\examples{
A <- Variable(2,2)
val <- cbind(c(-5,2), c(-3,1))
prob <- Problem(Maximize(min_entries(A)), list(A == val))
result <- solve(prob)
result$value
}
