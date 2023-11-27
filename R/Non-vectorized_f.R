#' @title Non-vectorized f
#'
#' Non-vectorized function to compute the volume of a cup of Champagne glass
#' @author Adlan Boithier
#' @param x A list or atomic vector.
#' @return The volume of a cup of Champagne glass
#' @examples
#' f1 <- champagne_f(2)
#' @export
champagne_f <- function(x) {
  if (x < 0) {
    return(0)
  } else if (x < 0.5) {
    return(15)
  } else if (x < 10) {
    return(2)
  } else if (x < 15) {
    return(8 * log2(x - 9) + 2)
  } else if (x <= 20) {
    return(8 * log2(6) + 2)
  } else {
    return(0)
  }
}

