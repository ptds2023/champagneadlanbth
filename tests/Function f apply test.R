context("Test for vectorized version of f using sapply")

test_that("f_sapply returns the correct result for a vector", {
  # Load the testthat library
  library(testthat)

  # Load the file containing the f_sapply function
  source("R/Function f apply.R")

  # Load the file containing the f function
  source("R/function f non-vectorized.R")

  # Test various cases with different arguments for the f_sapply function

  # Case 1: Vector with multiple values
  input_vector <- c(1, 2, 3, 4, 5)
  result_vector <- f_sapply(input_vector)
  expected_vector <- sapply(input_vector, f)  # Calculate the expected results with the non-vectorized function
  expect_equal(result_vector, expected_vector, "Expected result for f_sapply is not equal to the result of f for each element")

  # Case 2: Empty vector
  result_empty <- f_sapply(numeric(0))
  expect_equal(length(result_empty), 0, "f_sapply should return an empty vector for an empty input vector")
})
