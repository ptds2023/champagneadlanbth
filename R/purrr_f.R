#' @title Vectorize f with purrr
#'
#' Vectorize, by using a "map" function of "purrr", the non-vectorized function to compute the volume of a cup of Champagne glass
#' @author Adlan Boithier
#' @param x A list or atomic vector.
#' @param champagne_f A function.
#' @return The volume of a cup of Champagne glass
#' @examples
#' f1 <- champagne_f_purrr(c(1,2,3))
#' @importFrom purrr map_dbl
#' @export
champagne_f_purrr <- function(x) {
  purrr::map_dbl(x, champagne_f)
}
