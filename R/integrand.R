#' @title Integrand for volume calculation
#'
#' Define the integrand for volume calculation.
#' @param x A list or atomic vector.
#' @return The integrand.
#' @examples
#' # Define the "f_loop" function
#' champagne_f_loop <- function(x) {
#' result <- numeric(length(x))
#' for (i in seq_along(x)) {
#'   result[i] <- f(x[i])
#' }
#' return(result)
#' }
#'
#' @export
#' @author Adlan Boithier
#' @usage champagne_integrand(x)
champagne_integrand <- function(x) {
  sapply(x, champagne_f)
}
