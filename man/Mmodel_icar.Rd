% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Mmodel_icar.R
\name{Mmodel_icar}
\alias{Mmodel_icar}
\title{Intrinsic multivariate CAR latent effect}
\usage{
Mmodel_icar(
  cmd = c("graph", "Q", "mu", "initial", "log.norm.const", "log.prior", "quit"),
  theta = NULL
)
}
\arguments{
\item{cmd}{Internal functions used by the \code{rgeneric} model to define the latent effect.}

\item{theta}{Vector of hyperparameters.}
}
\value{
This is used internally by the \code{INLA::inla.rgeneric.define()} function.
}
\description{
M-model implementation of the intrinsic multivariate CAR latent effect using the \code{rgeneric} model of INLA.
}
\details{
This function considers an intrinsic CAR prior for the spatial latent effects of the different diseases and introduces correlation between them using the M-model proposal of \insertCite{botella2015unifying;textual}{bigDM}.
Putting the spatial latent effects for each disease in a matrix, the between disease dependence is introduced through the M matrix as \eqn{\Theta=\Phi M}, where the columns of \eqn{\Phi} follow an intrinsic CAR prior distribution (within-disease correlation).
A Wishart prior for the between covariance matrix \eqn{M'M} is considered using the Bartlett decomposition.
\cr\cr
The following arguments are required to be defined before calling the functions:
\itemize{
\item \code{W}: binary adjacency matrix of the spatial areal units
\item \code{J}: number of diseases
\item \code{initial.values}: initial values defined for the cells of the M-matrix
}
}
\references{
\insertRef{botella2015unifying}{bigDM}
}
