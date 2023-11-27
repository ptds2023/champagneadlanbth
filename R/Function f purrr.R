#' @title Vectorization of f by using a "map" function of "purrr"
#'
#' Vectorize, by using a "map" function of "purrr", the non-vectorized function to compute the volume of a cup of Champagne glass
#' @author Adlan Boithier
#' @param x A list or atomic vector.
#' @param f A function.
#' @return The volume of a cup of Champagne glass
#' @examples
#' f1 <- f_purrr(2, f)
#' @export
f_purrr <- function(x) {
  purrr::map_dbl(x, f)
}
