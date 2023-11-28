library(testthat)
library(devtools)
load_all()

test_that("champagne_b_uniroot returns a numeric value", {
  # Load the testthat library
  library(testthat)

  # Load the file containing the champagne_b_uniroot function
  source(system.file("R", "uniroot.R", package = "champagneadlanbth"))

  # Assuming you have defined the champagne_f and champagne_integrand functions
  source(system.file("R", "Non-vectorized_f.R", package = "champagneadlanbth"))
  source(system.file("R", "integrand.R", package = "champagneadlanbth"))

  # Test various cases with different arguments for the champagne_b_uniroot function

  # Case 1: Numeric result
  result_numeric <- champagne_b_uniroot
  expect_is(result_numeric, "numeric", "Expected result for champagne_b_uniroot is a numeric value")

})
