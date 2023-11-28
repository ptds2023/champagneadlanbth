library(testthat)
library(devtools)
load_all()

test_that("champagne_f_loop returns the correct result for a vector", {
  # Load the testthat library
  library(testthat)

  # Load the file that contains the champagne_f_loop function
  source(system.file("R", "For_loop_f.R", package = "champagneadlanbth"))

  # Load the file that contains the champagne_f function
  source(system.file("R", "Non-vectorized_f.R", package = "champagneadlanbth"))

  # Test multiple possibilities with different arguments

  # Case 1 : Vector with multiple values
  input_vector <- c(1, 2, 3, 4, 5)
  result_vector <- champagne_f_loop(input_vector)
  expected_vector <- sapply(input_vector, champagne_f)
  expect_equal(result_vector, expected_vector, "Expected result for champagne_f_loop is not equal to the result of champagne_f for each element")

  # Case 2 : Empty vector
  result_empty <- f_loop(numeric(0))
  expect_equal(length(result_empty), 0, "champagne_f_loop should return an empty vector for an empty input vector")
})
