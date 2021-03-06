\name{shift}

\docType{methods}

\alias{shift}
\alias{shift,SpatRaster-method}
  
\title{Shift}

\description{
Shift the location of a SpatRaster or SpatVector object
}

\usage{
\S4method{shift}{SpatRaster}(x, dx=0, dy=0, filename="", overwrite=FALSE, wopt=list(), ...)
}

\arguments{
  \item{x}{SpatRaster or SpatVector}
  \item{dx}{numeric. The shift in horizontal direction}
  \item{dy}{numeric. The shift in vertical direction}
  \item{filename}{character. Output filename. Optional}
  \item{overwrite}{logical. If \code{TRUE}, \code{filename} is overwritten}
  \item{wopt}{list. Options for writing files as in \code{\link{writeRaster}}}
  \item{...}{additional arguments. None implemented}  
}
 
\value{
Same object type as \code{x}
}


\seealso{ \code{\link{flip}}, \code{\link{rotate}}}

\examples{
r <- rast(xmn=0, ymn=0, xmx=1, ymx=1)
r <- shift(r, dx=1, dy=-1)
}

\keyword{spatial}
