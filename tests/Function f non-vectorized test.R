context("Test for non-vectorized version of f")

test_that("f returns the correct result for a single value", {
  # Charger la bibliothèque testthat
  library(testthat)

  # Charger le fichier qui contient la fonction f
  source("R/Function f non-vectorized.R")

  # Tester plusieurs cas avec différents arguments pour la fonction f

  # Cas 1 : Valeur négative
  result1 <- f(-1)
  expect_equal(result1, 0, "Expected result for f(-1) is 0")

  # Cas 2 : Valeur entre 0 et 0.5
  result2 <- f(0.2)
  expect_equal(result2, 15, "Expected result for f(0.2) is 15")

  # Cas 3 : Valeur entre 0.5 et 10
  result3 <- f(5)
  expect_equal(result3, 2, "Expected result for f(5) is 2")

  # Cas 4 : Valeur entre 10 et 15
  result4 <- f(12)
  expect_equal(result4, 8 * log2(3) + 2, "Expected result for f(12) is 8 * log2(3) + 2")

  # Cas 5 : Valeur entre 15 et 20
  result5 <- f(17)
  expect_equal(result5, 8 * log2(6) + 2, "Expected result for f(17) is 8 * log2(6) + 2")

  # Cas 6 : Valeur supérieure à 20
  result6 <- f(25)
  expect_equal(result6, 0, "Expected result for f(25) is 0")

  expect_error(f(c(1, 2, 3)), "f should throw an error for vector input")
})
