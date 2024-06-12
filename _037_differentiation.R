# Filename: _037_differentiation.R
# Title: Differentiation in R
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: June 11, 2024 | Last Updated: June 11, 2024
# Language: R | Version: 4.4.0

# Required packages
install.packages("Deriv")
library(Deriv)

# Define functions
f1 <- function(x) x^3 + 2*x^2 + x + 1
f2 <- function(x) sin(x) + cos(x)

# Differentiate the functions
df1 <- Deriv(f1)
df2 <- Deriv(f2)

# Print the derivatives
cat("Derivative of f1(x) = x^3 + 2*x^2 + x + 1:\n")
print(df1)
cat("\nDerivative of f2(x) = sin(x) + cos(x):\n")
print(df2)

# Test the derivatives at a specific point
x <- 2
cat("\nDerivative of f1 at x = 2:", df1(x), "\n")
cat("Derivative of f2 at x = 2:", df2(x), "\n")
