#' @title Vectorization of f by using a "for" loop
#'
#' Vectorize, by using a "for" loop, the non-vectorized function to compute the volume of a cup of Champagne glass
#' @author Adlan Boithier
#' @param x A list or atomic vector.
#' @return The volume of a cup of Champagne glass
#' @examples
#' f1 <- f_loop(2)
#' @export
f_loop <- function(x) {
  result <- numeric(length(x))
  for (i in seq_along(x)) {
    result[i] <- f(x[i])
  }
  return(result)
}
