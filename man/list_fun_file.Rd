% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/other_functions.R
\name{list_fun_file}
\alias{list_fun_file}
\title{List all functions used in an R script file by package}
\usage{
list_fun_file(filename, alphabetic = TRUE)
}
\arguments{
\item{filename}{Character. Path to an R file containing R code.}

\item{alphabetic}{Boolean. List functions alphabetically.
If FALSE, will list in order of appearance.}
}
\value{
Returns a list. Parses all functions called by an R script 
and then lists them by package. Those from the script itself are listed
under '.GlobalEnv' and any functions that may originate
from multiple packages have all possibilities listed. Those listed under
'character(0)' are those for which a package could not be found- may be
functions within functions, or from packages that aren't loaded.
}
\description{
Parses all functions called by an R script and then lists
them by package. Wrapper for 'getParseData'. May be of great
use for those developing a package to help see what 
namespace 'importsFrom' calls will be required.
}
\examples{
\dontrun{
# Choose an R script file with functions
rfile <- file.choose()
list_fun_file(rfile)
}
}
