#' @title Vectorization of f by using a "Vectorize"
#'
#' Vectorize, by using "Vectorize", the non-vectorized function to compute the volume of a cup of Champagne glass
#' @author Adlan Boithier
#' @param x A list or atomic vector.
#' @param f A function.
#' @return The volume of a cup of Champagne glass
#' @examples
#' f1 <- f_Vectorize(f)
#' @export
f_Vectorize <- Vectorize(f)
