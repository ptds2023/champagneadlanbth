#' @title Vectorization of f by using one of the "apply" functions.
#'
#' Vectorize, by using one of the "apply" functions.", the non-vectorized function to compute the volume of a cup of Champagne glass
#' @author Adlan Boithier
#' @param x A list or atomic vector.
#' @param f A function.
#' @return The volume of a cup of Champagne glass
#' @examples
#' f1 <- f_sapply(2, f)
#' @export
f_sapply <- function(x) {
  sapply(x, f)
}
