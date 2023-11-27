context("Test for vectorized version of f using a 'for' loop")

test_that("f_loop returns the correct result for a vector", {
  # Load the testthat library
  library(testthat)

  # Load the file that contains the f_loop function
  source("R/Function f for loop.R")

  # Load the file that contains the f function
  source("R/Function f non-vectorized.R")

  # Test multiple possibilities with different arguments

  # Case 1 : Vector with multiple values
  input_vector <- c(1, 2, 3, 4, 5)
  result_vector <- f_loop(input_vector)
  expected_vector <- sapply(input_vector, f)  # Calculer les résultats attendus avec la fonction non vectorisée
  expect_equal(result_vector, expected_vector, "Expected result for f_loop is not equal to the result of f for each element")

  # Case 2 : Empty vector
  result_empty <- f_loop(numeric(0))
  expect_equal(length(result_empty), 0, "f_loop should return an empty vector for an empty input vector")
})
