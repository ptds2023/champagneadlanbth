#' @title Extracting the results of a benchmark.
#'
#'Extract the results of a benchmark.
#' @author Adlan Boithier
#' @param benchmarking_results A list containing the results of benchmarking different functions.
#' @return The result of a benchmark test.
#' @examples
#' # Assuming you have benchmarked some functions and obtained the results
#' # using the benchmarking_results function.
#' # Example benchmarking_results function call:
#' # input <- c(10, 100, 1000, 10000)
#' # functions <- list(f_loop, f_purrr, f_sapply, f_Vectorize)
#' # benchmarking_results(input, functions)
#'
#' # Now, you can extract the results using benchmark_data function:
#' benchmark_data <- extract_benchmark_results(benchmarking_results)
#' @export
benchmark_data <- lapply(seq_along(benchmarking_results), function(i) {
  as.data.frame(benchmarking_results[[i]]) %>%
    mutate(size = input[i])
}) %>%
  bind_rows()
