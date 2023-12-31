#' @title Compute volume using optimize.
#'
#' Define the volume of champagne poured in a glass using "optimize".
#' @param x A list or atomic vector.
#' @return The volume of champagne poured in a glass.
#' @examples
#' #' # Define the "integrand" function
#' champagne_integrand <- function(x) {
#' result <- numeric(length(x))
#' for (i in seq_along(x)) {
#'   result[i] <- champagne_f(x[i])
#' }
#' return(result)
#' }
#'
#'champagne_integrand <- function(x) {
#' sapply(x, champagne_f)
#' @export
#' @importFrom stats optimize integrate
#' @author Adlan Boithier
#' @usage champagne_b_optimize(x)
champagne_b_optimize <- function(x) {
  optimize(
    function(x) abs(integrate(champagne_integrand, lower = 10, upper = x)$value - 0.2),
    c(10, 20)
  )$minimum
}
