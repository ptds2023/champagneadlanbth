library(testthat)
library(devtools)
load_all()

test_that("champagne_Parties returns a tibble with expected columns", {
  # Load the testthat library
  library(testthat)

  # Load the file containing the champagne_Parties function
  source(system.file("R", "Parties.R", package = "champagneadlanbth"))

  # Test various cases with different arguments for the champagne_Parties function

  # Case 1: Numeric result
  result <- champagne_Parties(n = 10, lambda_G = 5, lambda_D = 3, a = 0.3, mu_b = 3, sd_b = 1, volume_bottle = 0.75)

  # Check if the result is a tibble
  expect_is(result, "tbl_df", "Expected result for champagne_Parties is a tibble")

  # Check if the tibble has the expected columns
  expect_true("partie" %in% colnames(result), "The tibble should have a 'partie' column")
  expect_true("G" %in% colnames(result), "The tibble should have a 'G' column")
  expect_true("D" %in% colnames(result), "The tibble should have a 'D' column")
  expect_true("b" %in% colnames(result), "The tibble should have a 'b' column")
  expect_true("liters" %in% colnames(result), "The tibble should have a 'liters' column")
  expect_true("bottles" %in% colnames(result), "The tibble should have a 'bottles' column")

})
