#' @title Vectorization of f with apply.
#'
#' Vectorize, by using one of the "apply" functions.", the non-vectorized function to compute the volume of a cup of Champagne glass
#' @author Adlan Boithier
#' @param x A list or atomic vector.
#' @return The volume of a cup of Champagne glass
#' @examples
#' f1 <- champagne_f_sapply(c(1,2,3))
#' @export
#' @author Adlan Boithier
#' @usage champagne_f_sapply(x)
champagne_f_sapply <- function(x) {
  sapply(x, champagne_f)
}
