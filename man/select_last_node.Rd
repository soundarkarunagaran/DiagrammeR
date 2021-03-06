% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/select_last_node.R
\name{select_last_node}
\alias{select_last_node}
\title{Select last node in a series of node IDs in a graph}
\usage{
select_last_node(graph)
}
\arguments{
\item{graph}{a graph object of class
\code{dgr_graph} that is created using
\code{create_graph}.}
}
\value{
a graph object of class \code{dgr_graph}.
}
\description{
Select the last node from a graph
object of class \code{dgr_graph}. Strictly, this is
the node encompassing the last record of the graph's
node data frame. In practice, this will typically be
the last node added to the graph.
}
\examples{
library(magrittr)

# Create an empty graph
graph <- create_graph()

# Add three nodes to the graph
graph \%<>\% add_n_nodes(3)

# Select the last node added
graph \%<>\% select_last_node

# Get the current selection
graph \%>\% get_selection
#> $nodes
#> [1] "3"
}

