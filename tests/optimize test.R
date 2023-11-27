context("Test for the b_optimize function")

test_that("b_optimize returns a numeric value", {
  # Load the testthat library
  library(testthat)

  # Load the file containing the b_optimize function
  source("R/optimize.R")

  # Assuming you have defined the f and integrand functions
  source("R/Function f non-vectorized.R")
  source("R/integrand.R")

  # Test various cases with different arguments for the b_optimize function

  # Case 1: Numeric result
  result_numeric <- b_optimize
  expect_is(result_numeric, "numeric", "Expected result for b_optimize is a numeric value")

})
