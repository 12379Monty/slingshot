% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotting.R
\name{plot_tree}
\alias{plot_tree}
\title{Plot cluster connectivity}
\usage{
plot_tree(X, clus.labels, lineages = NULL, threeD = FALSE, dim = NA,
  col.clus = NULL, labels = TRUE)
}
\arguments{
\item{X}{numeric, the \code{n x p} matrix of samples in a reduced dimensionality 
space.}

\item{clus.labels}{character, a vector of length n denoting cluster labels.}

\item{lineages}{list, the out put of \code{\link{get_lineages}}, this list denotes 
which clusters belong to each lineage and contains the inferred connectivity 
between clusters.}

\item{threeD}{logical indicates whether to make a 3D plot with the \code{rgl} 
package.}

\item{dim}{total number of dimensions to be shown in a series of two-dimensional 
plots, similar to \code{pairs} plots (only applicable if \code{threeD} is false).}

\item{col.clus}{(optional) vector of colors to use for denoting clusters.}

\item{labels}{logical indicating whether to include labels on cluster centers.}
}
\value{
returns \code{NULL}.
}
\description{
\code{plot_tree} visualizes the output from \code{\link{get_lineages}}, 
showing cells (colored by cluster) in a reduced-dimensional space with connecting 
lines between cluster centers representing the inferred structure.
}
\details{
Plots cells as points in a reduced-dimensional space, colored by cluster.
 If a \code{lineages} argument is given, the plot will include straight lines
 between cluster centers for connections between clusters.

The default behavior is to produce a series of 2-D plots representing
 all pairwise combinations of dimensions in \code{X}, or the first \code{dim}
 dimensions. If \code{threeD=TRUE}, a three-dimensional plot will be created,
 using the \code{rgl} package.
}
\examples{
data("slingshot_example")
lin <- get_lineages(X, clus.labels, start.clus = 'a')
plot_tree(X, clus.labels, lin)

}

