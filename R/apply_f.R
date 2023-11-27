#' @title Vectorization of f with apply.
#'
#' Vectorize, by using one of the "apply" functions.", the non-vectorized function to compute the volume of a cup of Champagne glass
#' @author Adlan Boithier
#' @param x A list or atomic vector.
#' @param champagne_f A function.
#' @return The volume of a cup of Champagne glass
#' @examples
#' f1 <- champagne_f_sapply(2, champagne_f)
#' @export
champagne_f_sapply <- function(x) {
  sapply(x, champagne_f)
}
