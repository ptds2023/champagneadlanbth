#' @title Simulate parties and estimate Champagne needed.
#'
#' This function simulates parties and estimates the amount of Champagne needed based on various parameters.
#' @author Adlan Boithier
#' @param n The number of parties to simulate.
#' @param lambda_G Lambda of the Poisson Distribution regarding the number of guests.
#' @param lambda_D Lambda of the Poisson Distribution regarding the number of glasses drank by a guest.
#' @param a Bottom of the glass.
#' @param mu_b Mean of the normal distribution.
#' @param sd_b Standard deviation of the normal distribution.
#' @param volume_bottle The volume of a Champagne bottle.
#' @return A tibble with columns 'party' (party number), 'G' (number of guests), 'D' (total glasses drank),
#' 'b' (total Champagne in milliliters), and 'bottles' (number of Champagne bottles needed).
#' @examples
#' \dontrun{
#' # Example function call:
#' result <- champagne_Parties(
#' n = 100,
#' lambda_G = 10,
#' lambda_D = 5,
#' a = 0.5,
#' mu_b = 5,
#' sd_b = 2,
#' volume_bottle = 0.75
#' )

#' }
#' @importFrom stats rpois rnorm
#' @keywords internal
#' @export
utils::globalVariables(c("D", "G", "b","liters"))
champagne_Parties <- function(n, lambda_G, lambda_D, a, mu_b, sd_b, volume_bottle) {
  tibble::tibble(
    party = seq_len(n),
    G = rpois(n, lambda_G),
    D = purrr::map_dbl(G, ~ sum(rpois(.x, lambda_D))),
    b = purrr::map_dbl(D, ~ sum(pmin(rnorm(.x, mu_b, sd_b), a))),
    liters = b / 100,
    bottles = ceiling(liters / volume_bottle)
  )
}

