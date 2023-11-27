#' @title Benchmark functions performance.
#'
#' Benchmark different functions performance for the same task.
#' @author Adlan Boithier
#' @param input A numeric vector of different input sizes to test the functions.
#' @param functions A list of functions to benchmark for the same task.
#' @return The performance of different functions for the same task.
#' @examples
#' # Define some functions to test
#' f <- function(x) {
#'  if (x < 0) {
#'   return(0)
#'  } else if (x < 0.5) {
#'   return(15)
#'  } else if (x < 10) {
#'   return(2)
#'  } else if (x < 15) {
#'   return(8 * log2(x - 9) + 2)
#'  } else if (x <= 20) {
#'   return(8 * log2(6) + 2)
#'  } else {
#'   return(0)
#'  }
#' }
#'
#' f_loop <- function(x) {
#' result <- numeric(length(x))
#' for (i in seq_along(x)) {
#'   result[i] <- f(x[i])
#' }
#' return(result)
#' }
#' f_purrr <- function(x) {
#' map_dbl(x, f)
#' }
#' f_sapply <- function(x) {
#' sapply(x, f)
#' }
#' f_Vectorize <- Vecorize(f)
#'
#' # Benchmark the functions with different input sizes
#' input <- c(10, 100, 1000, 10000)
#' functions <- list(f_loop, f_purrr, f_sapply, f_Vectorize)
#' benchmarking_results(input, functions)

#' @export
benchmarking_results <- lapply(input, function(n) {
  input_data <- seq_len(n)
  microbenchmark::microbenchmark(
    loop = f_loop(input_data),
    purrr = f_purrr(input_data),
    sapply = f_sapply(input_data),
    Vectorize = f_Vectorize(input_data),
    times = 100
  )
})
