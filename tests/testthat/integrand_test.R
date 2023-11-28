library(testthat)
library(devtools)
load_all()

test_that("champagne_integrand returns the correct result for a vector", {
  # Load the testthat library
  library(testthat)

  # Load the file containing the champagne_integrand function
  source(system.file("R", "integrand.R", package = "champagneadlanbth"))

  # Assuming you have defined the champagne_f function
  source(system.file("R", "Non-vectorized_f.R", package = "champagneadlanbth"))

  # Test various cases with different arguments for the champagne_integrand function

  # Case 1: Vector with multiple values
  input_vector <- c(1, 2, 3, 4, 5)
  result_vector <- champagne_integrand(input_vector)
  expected_vector <- sapply(input_vector, champagne_f)  # Calculate the expected results with the non-vectorized function
  expect_equal(result_vector, expected_vector, "Expected result for champagne_integrand is not equal to the result of champagne_f for each element")

  # Case 2: Empty vector
  result_empty <- champagne_integrand(numeric(0))
  expect_equal(length(result_empty), 0, "champagne_integrand should return an empty vector for an empty input vector")
})
