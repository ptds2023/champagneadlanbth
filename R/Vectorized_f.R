#' @title Vectorized f
#'
#' Vectorized function to compute the volume of a cup of Champagne glass
#' @author Adlan Boithier
#' @param x A list or atomic vector.
#' @return The volume of a cup of Champagne glass
#' @examples
#' f1 <- champagne_f_vectorized(2)
#' @export
champagne_f_vectorized <- function(x) {
  ifelse(x < 0, 0,
         ifelse(0 <= x & x < 0.5, 15,
                ifelse(0.5 <= x & x < 10, 2,
                       ifelse(10 <= x & x < 15, 8 * log2(x - 9) + 2,
                              ifelse(15 <= x & x <= 20, 8 * log2(6) + 2, 0)
                       )
                )
         )
  )
}

