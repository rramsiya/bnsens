#' bnsens: A package for sensitivity analysis in Bayesian networks
#'
#' The package performs one-way sensitivity analysis for discrete Bayesian networks.
#'
#' @details
#' It provides three categories of functions:covariation schemes, dissimilarity measures and sensitivity function.
#' The co-variation schemes available are uniform-covariation scheme, proportional co-variation scheme and order-preserving co-variation scheme.\cr
#' The dissimilarity measures available are Chan-Darwiche distance and the Kullback-Leibler divergence.
#'
#' @section Co-variation schemes:
#' The available co-variation schemes are:
#'  \itemize{
#'   \item \emph{Uniform co-variation scheme} (\code{\link{uniform_covar}}): distributes the probability mass to be co-varied uniformly among the co-varying parameters.
#'   \item \emph{Proportional co-variation scheme} (\code{\link{proportional_covar}}): distributes the probability mass to be co-varied in the same proportion as in the original Bayesian network.
#'   \item \emph{Order-preserving co-variation scheme} (\code{\link{orderp_covar}}):distributes the probability mass to be co-varied among the co-varying parameters so that the original order of parameters is preserved.
#' }
#' @section Dissimilarity measures:
#' The dissimilarity measures quantify the difference between a Bayesian network and its update after parameter variation.\cr
#' The available dissimilarity measures are:
#' \itemize{
#'   \item \emph{Chan-Darwiche distance} (\code{\link{CD_distance}})
#'   \item \emph{Kullback-Leibler divergence} (\code{\link{KL}})
#' }
#'@section Sensitivity function:
#'The sensitivity function (\code{\link{sensitivity}}) explains a probability query of interest in terms of a parameter change.
#'
#' @docType package
#' @name bnsens
NULL
