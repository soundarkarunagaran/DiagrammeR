% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/add_edges_w_string.R
\name{add_edges_w_string}
\alias{add_edges_w_string}
\title{Add one or more edges using a text string}
\usage{
add_edges_w_string(graph, edges, rel = NULL)
}
\arguments{
\item{graph}{a graph object of class
\code{dgr_graph} that is created using
\code{create_graph}.}

\item{edges}{a single-length vector with a character
string specifying the edges.}

\item{rel}{an optional vector specifying the
relationship between the connected nodes.}
}
\value{
a graph object of class \code{dgr_graph}.
}
\description{
With a graph object of class
\code{dgr_graph}, add one or more edges to the graph
using a text string. For a directed graph, the
string object should be formatted as a series of
node ID values as \code{[node_ID_1]->[node_ID_2]}
separated by a single space. For undirected graphs,
\code{--} should replace \code{->}.
}
\examples{
library(magrittr)

# Create a graph with 10 nodes
graph <-
  create_graph() \%>\%
  add_n_nodes(10)

# Add edges between nodes using a character string
graph <-
  graph \%>\%
  add_edges_w_string(
    "1->2 1->3 2->4 2->5 3->6 3->7 4->8 4->9 5->10")
}

