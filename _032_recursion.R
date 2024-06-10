# Filename: _032_recursion.R
# Title: Recursion in R
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: June 10, 2024 | Last Updated: June 10, 2024
# Language: R | Version: 4.4.0

# Factorial
factorial <- function(n) {
    # Base case
    if (n == 0 || n == 1) {
        return(1)
    }
    # Recursive case
    else {
        return(n * factorial(n - 1))
    }
}

# Final Show
print(paste("Factorial:", factorial(5)))
