\name{plot.ernet}
\alias{plot.ernet}
\title{Plot coefficients from an ernet object}
\description{
Produces a coefficient profile plot of the coefficient paths for a
fitted ernet object. This function is modified based on the \code{plot} method in the \code{glmnet} package.
}
\usage{
\method{plot}{ernet}(x, xvar = c("norm", "lambda"), color = FALSE, label = FALSE, ...)
}
\arguments{
		\item{x}{fitted \code{\link{ernet}} model}
		\item{xvar}{what is on the x-axis. \code{"norm"} plots against the
		L1-norm of the coefficients, \code{"lambda"} against the log-lambda
		sequence.}
		\item{color}{if \code{TRUE}, plot the curves with rainbow colors. Otherwise, plot the curves with gray colors. Default is \code{FALSE}.}
		\item{label}{if \code{TRUE}, label the curves with variable sequence numbers. Otherwise, do not put labels. Default is \code{FALSE}.}
		\item{\dots}{other graphical parameters to plot.}
}
\details{
A coefficient profile plot is produced.
}
\author{
Yuwen Gu and Hui Zou\cr
Maintainer: Yuwen Gu  <guxxx192@umn.edu>
}

\examples{
set.seed(1)
n <- 100
p <- 400
x <- matrix(rnorm(n*p), n, p)
y <- rnorm(n)
tau <- 0.90
pf <- abs(rnorm(p))
pf2 <- abs(rnorm(p))
lambda2 <- 1
m1 <- ernet(y = y, x = x, tau = tau, eps = 1e-8, pf = pf,
            pf2 = pf2, standardize = FALSE, intercept = FALSE,
            lambda2 = lambda2)
plot(m1)
}

\seealso{\code{\link{plot.cv.ernet}}}

\keyword{models}
\keyword{regression}
