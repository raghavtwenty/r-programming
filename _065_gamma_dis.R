# Filename: _065_gamma_dis.R
# Title: Gamma Distribution
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: June 26, 2024 | Last Updated: June 26, 2024
# Language: R | Version: 4.4.0

# Description of functions:
# dgamma: Gamma probability density function (pdf)
# pgamma: Gamma distribution cumulative distribution function (cdf)
# qgamma: Gamma quantile function
# rgamma: Gamma pseudorandom number generation

# Parameters for the gamma distribution
shape_param = 2  # Shape parameter (k)
rate_param = 1   # Rate parameter (theta)

# Define the range of values to consider
x_values = seq(0, 20, by = 0.1)

# Calculate gamma densities for the range of values
gamma_densities = dgamma(x_values,
    shape = shape_param,
    rate = rate_param
)

# Display the calculated densities
print(gamma_densities)

# Plot the gamma densities
plot(x_values,
    gamma_densities,
    col = "brown",
    type = "l",
    lwd = 2,
    main = "Gamma Distribution (shape=2, rate=1)",
    xlab = "x",
    ylab = "Density")
