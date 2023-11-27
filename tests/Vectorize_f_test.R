context("Test for vectorized version of f using Vectorize")

test_that("champagne_f_Vectorize returns the correct result for a vector", {
  # Load the testthat library
  library(testthat)

  # Load the file containing the champagne_f_Vectorize function
  source("R/Vectorize_f.R")

  # Load the file containing the champagne_f function
  source("R/Non-vectorized_f.R")

  # Test various cases with different arguments for the f_Vectorize function

  # Case 1: Vector with multiple values
  input_vector <- c(1, 2, 3, 4, 5)
  result_vector <- champagne_f_Vectorize(input_vector)
  expected_vector <- sapply(input_vector, champagne_f)  # Calculate the expected results with the non-vectorized function
  expect_equal(result_vector, expected_vector, "Expected result for champagne_f_Vectorize is not equal to the result of champagne_f for each element")

  # Case 2: Empty vector
  result_empty <- champagne_f_Vectorize(numeric(0))
  expect_equal(length(result_empty), 0, "champagne_f_Vectorize should return an empty vector for an empty input vector")
})
