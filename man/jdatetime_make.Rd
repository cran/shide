% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/jdate.R, R/jdatetime.R
\name{jdate_make}
\alias{jdate_make}
\alias{jdatetime_make}
\title{Construct Jalali date-time objects from individual components}
\usage{
jdate_make(year, month = 1L, day = 1L, ...)

jdatetime_make(
  year,
  month = 1L,
  day = 1L,
  hour = 0L,
  minute = 0L,
  second = 0L,
  tzone = "",
  ...
)
}
\arguments{
\item{year}{Numeric year.}

\item{month}{Numeric month.}

\item{day}{Numeric day.}

\item{...}{These dots are for future extensions and must be empty.}

\item{hour}{Numeric hour.}

\item{minute}{Numeric minute.}

\item{second}{Numeric second.}

\item{tzone}{A time zone name. Default value represents local time zone.}
}
\value{
\itemize{
\item \code{jdate_make()} A vector of jdate object.
\item \code{jdatetime_make()} A vector of jdatetime object.
}
}
\description{
\itemize{
\item \code{jdate_make()} creates a \code{jdate} object from individual components.
\item \code{jdatetime_make()} creates a \code{jdatetime} object from individual components.
}
}
\details{
Numeric components are recycled to their common size using
\link[vctrs:theory-faq-recycling]{tidyverse recycling rules}.
}
\examples{
## At least 'year' must be supplied
jdate_make(year = 1401)
## Components are recycled
jdatetime_make(year = 1399:1400, month = 12, day = c(30, 29), hour = 12, tzone = "UTC")
}
