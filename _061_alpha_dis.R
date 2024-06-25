# Filename: _061_alpha_dis.R
# Title: Alpha (Inverse Gamma) Distribution
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: June 25, 2024 | Last Updated: June 25, 2024
# Language: R | Version: 4.4.0

# Description of functions:
# dgamma: Gamma probability density function (pdf)
# pgamma: Gamma distribution cumulative distribution function (cdf)
# qgamma: Gamma quantile function
# rgamma: Gamma pseudorandom number generation

# Inverse Gamma (Alpha) distribution density function
dalpha <- function(x, shape, rate) {
  return (rate^shape / gamma(shape) * x^(-shape - 1) * exp(-rate / x))
}

# Parameters for the Alpha (Inverse Gamma) distribution
shape_param = 2  # Shape parameter (alpha)
rate_param = 1   # Rate parameter (beta)

# Define the range of values to consider
x_values = seq(0.1, 10, by = 0.1)

# Calculate alpha (inverse gamma) densities for the range of values
alpha_densities = dalpha(x_values,
    shape = shape_param,
    rate = rate_param
)

# Display the calculated densities
print(alpha_densities)

# Plot the alpha (inverse gamma) densities
plot(x_values, alpha_densities,
    col = "magenta",
    type = "l",
    lwd = 2,
    main = "Alpha (Inverse Gamma) Distribution (shape=2, rate=1)",
    xlab = "x",
    ylab = "Density"
)
