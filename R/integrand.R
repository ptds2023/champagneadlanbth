#' @title Compute the integrand for volume calculation.
#'
#' Define the integrand for volume calculation.
#' @author Adlan Boithier
#' @param x A list or atomic vector.
#' @param f A function.
#' @return The integrand.
#' @examples
#' #' # Define the "f_loop" function
#' f <- function(x) {
#' result <- numeric(length(x))
#' for (i in seq_along(x)) {
#'   result[i] <- f(x[i])
#' }
#' return(result)
#' }
#'
#' @export
integrand <- function(x) {
  sapply(x, f)
}
