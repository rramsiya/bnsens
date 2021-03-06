#' bnsens: A package for sensitivity analysis in Bayesian networks
#'
#' The package performs sensitivity analysis for discrete Bayesian networks.
#'
#' @details
#' It provides three categories of functions:covariation schemes, dissimilarity measures and sensitivity related functions.\cr
#' The co-variation schemes available are uniform-covariation scheme, proportional co-variation scheme and order-preserving co-variation scheme.\cr
#' The dissimilarity measures available are the Chan-Darwiche distance and the Kullback-Leibler divergence. The available sensitivity related functions are the standard sensitivity function and sensquery, a new function 
#' which allows to determine the parameter changes that are needed to get a certain probabilistic query of interest.
#'
#' @section Co-variation schemes:
#' The available co-variation schemes are:
#'  \itemize{
#'   \item \emph{Uniform co-variation scheme} (\code{\link{uniform_covar}}): distributes the probability mass to be co-varied uniformly among the co-varying parameters.
#'   \item \emph{Proportional co-variation scheme} (\code{\link{proportional_covar}}): distributes the probability mass to be co-varied in the same proportion as in the original Bayesian network.
#'   \item \emph{Order-preserving co-variation scheme} (\code{\link{orderp_covar}}):distributes the to be co-varied probability mass among the co-varying parameters so that the original order of parameters is preserved.
#' }
#' @section Dissimilarity measures:
#' The dissimilarity measures quantify the difference between a Bayesian network and its update after parameter variation.\cr
#' The available dissimilarity measures are:
#' \itemize{
#'   \item \emph{Chan-Darwiche distance} (\code{\link{CD_distance}})
#'   \item \emph{Kullback-Leibler divergence} (\code{\link{KL}})
#' }
#'@section Sensitivity functions:
#'The available function for sensitivity analysis are:
#'  \itemize{
#'   \item \emph{Sensitivity function} (\code{\link{sensitivity}}): returns a certain probability of interest given a parameter change. Evidence can be considered.
#'   \item \emph{Sensitivity query} (\code{\link{sensquery}}): returns the parameter changes needed to get a certain probability of interest. Evidence can be considered.
#' }
#'
#' @docType package
#' @name bnsens
NULL
