#' Bayesian network on fire alarm system
#'
#' \code{fire_alarm} is a bn.fit object explaining the Bayesian network for a fire alarm system.
#'
#' @docType data
#'
#' @usage data(fire_alarm)
#'
#' @format The Bayesian network \code{fire_alarm} comprehends the following nodes:
#' \itemize{
#'   \item \bold{Fire}: two-level factor with levels \emph{TRUE} and \emph{FALSE}. Indicates presence or absence of a fire.
#'   \item \bold{Smoke}: two level-factor with levels \emph{TRUE} and \emph{FALSE}. Indicates if the alarm system has been tampered or not.
#'   \item \bold{Alarm}: three level-factor with levels \emph{TRUE}, \emph{MALFUNCTION} and \emph{FALSE}. Indicates presence or absence of smoke.
#'   \item \bold{Tampering}: two level-factor with levels \emph{TRUE} and \emph{FALSE}. Indicates if the alarm is ringing, is malfunctioning or it is not ringing.
#'   \item \bold{Leaving}: two level-factor with levels \emph{TRUE} and \emph{FALSE}. Indicates if the building is being evacuated or not.
#'   \item \bold{Report}: two level-factor with levels \emph{TRUE} and \emph{FALSE}. Indicates if the incident has been reported or not.
#' }
#'
#' @keywords BNs
"fire_alarm"
