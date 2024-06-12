# Filename: _036_derivatives.R
# Title: Derivatives in R
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: June 11, 2024 | Last Updated: June 11, 2024
# Language: R | Version: 4.4.0

# Required packages
install.packages("Deriv")
library(Deriv)

# Define a function
f <- function(x) sin(x) * cos(x)

# Compute the first derivative
df <- Deriv(f)

# Compute the second derivative
ddf <- Deriv(df)

# Print the derivatives
cat("First derivative of f(x) = sin(x) * cos(x):\n")
print(df)
cat("\nSecond derivative of f(x) = sin(x) * cos(x):\n")
print(ddf)

# Test the derivatives at a specific point
x <- pi / 4
cat("\nFirst derivative of f at x = pi/4:", df(x), "\n")
cat("Second derivative of f at x = pi/4:", ddf(x), "\n")
