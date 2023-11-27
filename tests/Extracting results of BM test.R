context("Test for extracting benchmark results")

test_that("extract_benchmark_results returns the correct result", {
  # Load the testthat library
  library(testthat)

  # Load the file containing the extract_benchmark_results function
  source("R/Extracting results of BM.R")

  # Assuming you have benchmarked some functions and obtained the results
  input <- c(10, 100, 1000, 10000)
  functions <- list(f_loop, f_purrr, f_sapply, f_Vectorize)

  # Example benchmarking_results function call
  benchmarking_results <- benchmarking_results(input, functions)

  # Now, extract the results using the extract_benchmark_results function
  benchmark_data <- extract_benchmark_results(benchmarking_results)

  # Test the structure of the resulting data frame
  expect_is(benchmark_data, "data.frame", "The result should be a data frame")
  expect_true("time" %in% colnames(benchmark_data), "The data frame should have a 'time' column")
  expect_true("size" %in% colnames(benchmark_data), "The data frame should have a 'size' column")
})
