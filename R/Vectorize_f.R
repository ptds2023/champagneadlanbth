#' @title Vectorize f by using Vectorize
#'
#' Vectorize, by using "Vectorize", the non-vectorized function to compute the volume of a cup of Champagne glass
#' @author Adlan Boithier
#' @param champagne_f A function.
#' @return The volume of a cup of Champagne glass
#' @examples
#' f1 <- champagne_f_Vectorize(f)
#' @export
champagne_f_Vectorize <- Vectorize(champagne_f)
