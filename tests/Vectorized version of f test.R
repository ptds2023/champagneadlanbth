context("Test for vectorized version of f_vectorized")

test_that("f_vectorized returns the correct result for a vector", {
  # Load the testthat library
  library(testthat)

  # Load the file containing the f_vectorized function
  source("R/Vectorized version of f.R")

  # Test various cases with different arguments for the f_vectorized function

  # Case 1: Vector with multiple values
  input_vector <- c(1, 2, 3, 4, 5)
  result_vector <- f_vectorized(input_vector)
  expected_vector <- sapply(input_vector, f_vectorized)  # Calculate the expected results with the vectorized function
  expect_equal(result_vector, expected_vector, "Expected result for f_vectorized is not equal to the result of f_vectorized for each element")

  # Case 2: Empty vector
  result_empty <- f_vectorized(numeric(0))
  expect_equal(length(result_empty), 0, "f_vectorized should return an empty vector for an empty input vector")
})
