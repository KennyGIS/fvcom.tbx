% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/excludes.R
\name{exclude_unavailable}
\alias{exclude_unavailable}
\title{Exclude any rows in a dataframe associated with unavailable WeStCOMS files}
\usage{
exclude_unavailable(dat, dir2load, ...)
}
\arguments{
\item{dat}{A dataframe (e.g. containing information necessary to extract WeStCOMS outputs). The only requirement is an integer column named 'date_name' which contains the 6 digit code of WeStCOMS file names (see \code{\link[WeStCOMSExploreR]{date_name}}).}

\item{dir2load}{A string which defines the directory from which WeStCOMS files are loaded. The function identifies all files in this directory (with necessary properties, see \code{...}) to determine whether any of the date names in \code{dat} are not found \code{dir2load}. If this is the case, these rows which refer to unavailable files in \code{dat} are removed.}

\item{...}{Additional arguments passed to \code{\link[base]{list.files}}, such as \code{pattern}.}
}
\value{
A dataframe, as inputted, but in which any rows which refer to the names of unavailable WeStCOMS files have been excluded. If rows have been excluded, the function returns a warning.
}
\description{
This function screens vector of WeStCOMS file names in a dataframe and removes any rows wich refer to WeStCOMS files that are unavailable in a specified directory. This is an important check prior to loading multiple WeStCOMS files into R.
}
\examples{

\dontrun{
path <- system.file("WeStCOMS_files/tidal_elevation/",
                    package = "WeStCOMSExploreR", mustWork = TRUE)
exclude_unavailable(data.frame(date_name = c(160301, 160302, 160303)), path)
exclude_unavailable(data.frame(date_name = c(160301, 160302, 160303), depth = c(60,  65, 90)), path)
}

}
\seealso{
This check is implemented by \code{\link[WeStCOMSExploreR]{extract}}.
}
\author{
Edward Lavender
}