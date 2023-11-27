context("Test for non-vectorized version of f")

test_that("f randurns the correct result for a single value", {
  # Load the testthat library
  library(testthat)

  # Load the file that contains the f function
  source("R/Function f non-vectorized.R")

  # Test multiple possibilities

  # Case1 : Negative value
  result1 <- f(-1)
  expect_equal(result1, 0, "Expected result for f(-1) is 0")

  # Case2 : Value between 0 and 0.5
  result2 <- f(0.2)
  expect_equal(result2, 15, "Expected result for f(0.2) is 15")

  # Case3 : Value between 0.5 and 10
  result3 <- f(5)
  expect_equal(result3, 2, "Expected result for f(5) is 2")

  # Case4 : Value between 10 and 15
  result4 <- f(12)
  expect_equal(result4, 8 * log2(3) + 2, "Expected result for f(12) is 8 * log2(3) + 2")

  # Case5 : Value between 15 and 20
  result5 <- f(17)
  expect_equal(result5, 8 * log2(6) + 2, "Expected result for f(17) is 8 * log2(6) + 2")

  # Case6 : Value superior than 20
  result6 <- f(25)
  expect_equal(result6, 0, "Expected result for f(25) is 0")

  expect_error(f(c(1, 2, 3)), "f should throw an error for vector input")
})
