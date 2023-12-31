
# champagneadlanbth

<!-- badges: start -->
[![Codecov test coverage](https://codecov.io/gh/ptds2023/champagneadlanbth/branch/master/graph/badge.svg)](https://app.codecov.io/gh/ptds2023/champagneadlanbth?branch=master)
[![R-CMD-check](https://github.com/ptds2023/champagneadlanbth/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/ptds2023/champagneadlanbth/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

The goal of champagneadlanbth is to : 
- First, being able to model a champagne glass using the disk integration method.
- Second, to compute the volume of a Champagne glass.
- Third, to be able to Simulate a party where Champagne is served under certain parameters and compute how many bottles will you need to satisfy your guests with a 99% chance. 

## Installation

You can install the development version of champagneadlanbth from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("ptds2023/champagneadlanbth")
```

## Example

This is a basic example which shows you how to solve how much Champagne is needed :

``` r
# Example to simulate parties and estimate Champagne needed
library(champagneadlanbth)
## result <- champagne_Parties(
n = 100,
lambda_G = 10,
lambda_D = 5,
a = 0.5,
mu_b = 5,
sd_b = 2,
volume_bottle = 0.75
)
```

