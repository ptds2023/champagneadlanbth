context("Test for the integrand function")

test_that("integrand returns the correct result for a vector", {
  # Load the testthat library
  library(testthat)

  # Load the file containing the integrand function
  source("R/integrand.R")

  # Assuming you have defined the f function
  source("R/f.R")

  # Test various cases with different arguments for the integrand function

  # Case 1: Vector with multiple values
  input_vector <- c(1, 2, 3, 4, 5)
  result_vector <- integrand(input_vector)
  expected_vector <- sapply(input_vector, f)  # Calculate the expected results with the non-vectorized function
  expect_equal(result_vector, expected_vector, "Expected result for integrand is not equal to the result of f for each element")

  # Case 2: Empty vector
  result_empty <- integrand(numeric(0))
  expect_equal(length(result_empty), 0, "integrand should return an empty vector for an empty input vector")
})
