library(testthat)
library(devtools)
load_all()

test_that("champagne_f_vectorized returns the correct result for a vector", {
  # Load the testthat library
  library(testthat)

  # Load the file containing the champagne_f_vectorized function
  source(system.file("R", "Vectorized_f.R", package = "champagneadlanbth"))

  # Test various cases with different arguments for the champagne_f_vectorized function

  # Case 1: Vector with multiple values
  input_vector <- c(1, 2, 3, 4, 5)
  result_vector <- champagne_f_vectorized(input_vector)
  expected_vector <- sapply(input_vector, champagne_f_vectorized)  # Calculate the expected results with the vectorized function
  expect_equal(result_vector, expected_vector, "Expected result for champagne_f_vectorized is not equal to the result of champagne_f_vectorized for each element")

  # Case 2: Empty vector
  result_empty <- champagne_f_vectorized(numeric(0))
  expect_equal(length(result_empty), 0, "champagne_f_vectorized should return an empty vector for an empty input vector")
})
