# Filename: _055_exponential_dis.R
# Title: Exponential Distribution
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: June 23, 2024 | Last Updated: June 23, 2024
# Language: R | Version: 4.4.0

# Description of functions:
# dexp: Exponential probability density function (pdf)
# pexp: Exponential distribution cumulative distribution function (cdf)
# qexp: Exponential quantile function
# rexp: Exponential pseudorandom number generation

# Parameters for the exponential distribution
rate_param = 1  # Rate parameter (lambda)

# Define the range of values to consider
x_values = seq(0, 10, by = 0.1)

# Calculate exponential probabilities (density) for the range of values
exp_densities = dexp(x_values,
    rate = rate_param
)

# Display the calculated densities
print(exp_densities)

# Plot the exponential densities
plot(x_values,
    exp_densities,
    col = "cyan",
    type = "l",
    lwd = 2,
    main = "Exponential Distribution (rate=1)",
    xlab = "x",
    ylab = "Density"
)
