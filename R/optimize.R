#' @title Compute the volume of champagne poured in a glass using "optimize".
#'
#' Define the volume of champagne poured in a glass using "optimize".
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
b_optimize <- optimize(function(x) abs(integrate(integrand, lower = 10, upper = x)$value - 0.2), c(10, 20))$minimum
cat("Value of b using optimize:", b_optimize, "\n")
