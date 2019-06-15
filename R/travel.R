#' Bayesian network on travel survey
#'
#' \code{travel} is a bn.fit object explaining the Bayesian network for a survey on travelling preferences.
#'
#' @docType data
#'
#' @usage data(travel)
#'
#' @format The Bayesian network \code{travel} comprehends the following nodes:
#' \itemize{
#'   \item \bold{A}: three-level factor with levels \emph{young}, \emph{adult}, \emph{old}. Indicates the age of an individual.
#'   \item \bold{S}: two level-factor with levels \emph{M} (male) and \emph{F} (female). Indicates the sex of an individual.
#'   \item \bold{E}: two level-factor with levels \emph{high} and \emph{uni}. Indicates the education level of an individual.
#'   \item \bold{O}: two level-factor with levels \emph{emp} (employed) and \emph{self} (self-employed). Indicates the occupation of an individual.
#'   \item \bold{R}: two level-factor with levels \emph{small} and \emph{big}. Indicates the size of the residence of an individual.
#'   \item \bold{T}: three level-factor with levels \emph{car}, \emph{train} and \emph{other}. Indicates the preferred mean of transport by an individual.
#' }
#'@source Marco Scutari, Jean-Baptiste Denis (2014). "Bayesian Networks:With Examples in R".
#' @keywords BNs
"travel"
