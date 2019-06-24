\name{subset-vector}

\alias{subset,SpatVector-method}
\alias{[[,SpatVector,numeric,missing-method}
\alias{[[,SpatVector,character,missing-method}
\alias{[,SpatVector,numeric,missing-method}
\alias{[,SpatVector,missing,numeric-method}
\alias{[,SpatVector,missing,character-method}
\alias{[,SpatVector,numeric,numeric-method}
\alias{[,SpatVector,numeric,character-method}
\alias{$,SpatVector-method}

\title{Subset of a SpatVector}

\description{
Select a subset of variables or records from a SpatVector.  
}

\usage{
\S4method{subset}{SpatVector}(x, subset, drop=FALSE, ...)
}

\arguments{
  \item{x}{SpatVector}
  \item{subset}{logical expression indicating elements or rows to keep: missing values are taken as false}
  \item{drop}{logical. If \code{TRUE}, the geometries will be dropped, and a data.frame is returned}
  \item{...}{Additional arguments. None implemented}  
}

\value{
SpatVector or data.frame (if \code{drop=TRUE})
}

\examples{
f <- system.file("exdata/lux.shp", package="terra")
v <- vect(f)
v[2:3,]
v[,2:3]
subset(v, v$NAME_1 == "Diekirch") 
}

\keyword{ spatial }