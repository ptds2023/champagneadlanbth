#' @title Vectorize f by using Vectorize
#'
#' Vectorize, by using "Vectorize", the non-vectorized function to compute the volume of a cup of Champagne glass
#' @author Adlan Boithier
#' @param x A list or atomic vector.
#' @return The volume of a cup of Champagne glass
#' @examples
#' f1 <- champagne_f_Vectorize(c(1,2,3))
#' @export
champagne_f_Vectorize <- Vectorize(champagne_f)

