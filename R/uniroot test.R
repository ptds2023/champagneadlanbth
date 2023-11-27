context("Test for the b_uniroot function")

test_that("b_uniroot returns a numeric value", {
  # Load the testthat library
  library(testthat)

  # Load the file containing the b_uniroot function
  source("R/uniroot.R")

  # Assuming you have defined the f and integrand functions
  source("R/Function f non-vectorized.R")
  source("R/integrand.R")

  # Test various cases with different arguments for the b_uniroot function

  # Case 1: Numeric result
  result_numeric <- b_uniroot
  expect_is(result_numeric, "numeric", "Expected result for b_uniroot is a numeric value")

})
