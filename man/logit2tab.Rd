% Generated by roxygen2 (4.0.2): do not edit by hand
\name{logit2tab}
\alias{logit2tab}
\title{Format logistic regression table}
\usage{
logit2tab(reg, file = NULL, xvlab = NULL, stats = F)
}
\arguments{
\item{reg}{logistic regression object.  output from \code{\link{glm}}}

\item{file}{filepath of ouput.  \code{txt} or \code{csv} object.}

\item{xvlab}{data.frame, lookup table for variable names.  First column is codename, second column is the pretty printed name.}

\item{stats}{include statistics in output}
}
\value{
data.frame of results formatted nicely
}
\description{
Turns a logistic regression object into a regression table
and outsheets it to a csv if you choose
}
\examples{
reg <- glm(am~qsec+hp, data=mtcars, family=binomial(logit))
logit2tab(reg)
longnames <- data.frame(short = c('wt', 'mpg', 'cyl', 'drat', 'hp', 'am', 'qsec'),
long = c('Weight', 'Miles Per Gallon', 'Cylinder', 'D.R.A.T', 'Horsepower', 'A.M.', 'Q Seconds'))
logit2tab(reg, xvlab=longnames, stats=T)
}

