#' @title Compute the volume of champagne poured in a glass using "uniroot".
#'
#' Define the volume of champagne poured in a glass using "uniroot".
#' @author Adlan Boithier
#' @param x A list or atomic vector.
#' @param f A function.
#' @return The volume of champagne poured in a glass.
#' @examples
#' #' # Define the "integrand" function
#' f <- function(x) {
#' result <- numeric(length(x))
#' for (i in seq_along(x)) {
#'   result[i] <- f(x[i])
#' }
#' return(result)
#' }
#'
#'integrand <- function(x) {
#' sapply(x, f)
#'}
#' @export
b_uniroot <- uniroot(function(x) integrate(integrand, lower = 10, upper = x)$value - 0.2, c(10, 20))$root
cat("Value of b using uniroot:", b_uniroot, "\n")
