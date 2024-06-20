# Filename: _047_normal_dis.R
# Title: Normal Distribution
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: June 20, 2024 | Last Updated: June 20, 2024
# Language: R | Version: 4.4.0

# Description of functions:
# dnorm: Normal probability density function (pdf)
# pnorm: Normal distribution cumulative distribution function (cdf)
# qnorm: Normal quantile function
# rnorm: Normal pseudorandom number generation

# Parameters for the normal distribution
mean_param = 0  # Mean (mu)
sd_param = 1    # Standard deviation (sigma)

# Define the range of values to consider
x_values = seq(-10, 10, by = 0.1)

# Calculate normal densities for the range of values
normal_densities = dnorm(x_values,
    mean = mean_param,
    sd = sd_param
)

# Display the calculated densities
print(normal_densities)

# Plot the normal densities
plot(x_values, normal_densities,
    col = "blue",
    type = "l",
    lwd = 2,
    main = "Normal Distribution (mean=0, sd=1)",
    xlab = "x",
    ylab = "Density"
)
