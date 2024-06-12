# Filename: _038_integration.R
# Title: Integration in R
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: June 11, 2024 | Last Updated: June 11, 2024
# Language: R | Version: 4.4.0

# Define the function to be integrated
f <- function(x) {
    return(x^2)
}

sin_function <- function(x) {
    return(sin(x))
}

cos_function <- function(x) {
    return(cos(x))
}

# Define the limits of integration
lower_limit <- 0
upper_limit <- 2

# Perform the integration using the integrate function
result <- integrate(f, lower_limit, upper_limit)

# Print the result
print("Result for x power 2 with l=0 and h=2:")
print(result)

# Define the limits of integration
lower_limit <- 0
upper_limit <- pi/2

# Perform the integration for sine function
result_sin <- integrate(sin_function, lower_limit, upper_limit)

# Perform the integration for cosine function
result_cos <- integrate(cos_function, lower_limit, upper_limit)

# Print the results
print("Integration result for sine function:")
print(result_sin)

print("Integration result for cosine function:")
print(result_cos)
