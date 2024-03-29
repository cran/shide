% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/leap_years.R
\name{sh_year_is_leap}
\alias{sh_year_is_leap}
\title{Determine if a Jalali year is a leap year}
\usage{
sh_year_is_leap(x)
}
\arguments{
\item{x}{A \code{jdate} or \code{jdatetime} object or a numeric vector representing Jalali years.}
}
\value{
\code{TRUE} if in a leap year or \code{FALSE} otherwise.
}
\description{
Check if an instant is in a leap year according to the Jalali calendar.
}
\examples{
sh_year_is_leap(jdatetime("1399-01-01 00:00:00"))
x <- seq(jdate("1400-01-01"), by = "years", length.out = 10)
names(x) <- sh_year(x)
sh_year_is_leap(x)
}
