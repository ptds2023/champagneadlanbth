
# champagneadlanbth

<!-- badges: start -->
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

This is a basic example which shows you how to solve a common problem:

``` r
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

