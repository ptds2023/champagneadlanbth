requireNamespace("testthat") # Charger le package testthat
testthat::test_that("multiplication works", { # Utiliser test_that avec le préfixe testthat::
  testthat::expect_equal(2 * 2, 4) # Utiliser expect_equal avec le préfixe testthat::
})
