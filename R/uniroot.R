#' @title Compute volume using uniroot.
#'
#' Define the volume of champagne poured in a glass using "uniroot".
#' @param x A list or atomic vector.
#' @return The volume of champagne poured in a glass.
#' @examples
#' #' # Define the "integrand" function
#' f <- function(x) {
#' result <- numeric(length(x))
#' for (i in seq_along(x)) {
#'   result[i] <- champagne_f(x[i])
#' }
#' return(result)
#' }
#'
#'integrand <- function(x) {
#' sapply(x, champagne_f)
#'}
#' @export
#' @author Adlan Boithier
#' @usage champagne_b_uniroot(x)
champagne_b_uniroot <- uniroot(function(x) integrate(champagne_integrand, lower = 10, upper = x)$value - 0.2, c(10, 20))$root

