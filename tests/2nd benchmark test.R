context("Benchmarking functions")

test_that("Benchmarking functions produces expected results", {

  library(testthat)

  source("R/2nd benchmark.R")

  # Define some functions to test
  f <- function(x) {
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

  f_loop <- function(x) {
    result <- numeric(length(x))
    for (i in seq_along(x)) {
      result[i] <- f(x[i])
    }
    return(result)
  }
  f_purrr <- function(x) {
    map_dbl(x, f)
  }
  f_sapply <- function(x) {
    sapply(x, f)
  }
  f_Vectorize <- Vecorize(f)
  f_vectorized <- function(x) {
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

  # Benchmark the functions with different input sizes
  input <- c(10, 100, 1000, 10000)
  functions <- list(f_loop, f_purrr, f_sapply, f_Vectorize, f_vectorized)
  benchmarking_results(input, functions)

  expect_equal(length(benchmark_results$loop), length(input_data))
  expect_equal(length(benchmark_results$purrr), length(input_data))
  expect_equal(length(benchmark_results$sapply), length(input_data))
  expect_equal(length(benchmark_results$Vectorize), length(input_data))
  expect_equal(length(benchmark_results$vectorized), length(input_data))

})
