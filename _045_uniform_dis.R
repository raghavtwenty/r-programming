# Filename: _045_uniform_dis.R
# Title: Uniform Distribution
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: June 20, 2024 | Last Updated: June 20, 2024
# Language: R | Version: 4.4.0

# Description of functions:
# dunif: Uniform probability density function (pdf)
# punif: Uniform distribution cumulative distribution function (cdf)
# qunif: Uniform quantile function
# runif: Uniform pseudorandom number generation

# Parameters for the uniform distribution
min_param = 0  # Minimum value (a)
max_param = 1  # Maximum value (b)

# Define the range of values to consider
x_values = seq(-0.5, 1.5, by = 0.01)

# Calculate uniform densities for the range of values
uniform_densities = dunif(x_values,
    min = min_param,
    max = max_param)

# Display the calculated densities
print(uniform_densities)

# Plot the uniform densities
plot(x_values, uniform_densities,
    col = "green",
    type = "l",
    lwd = 2,
    main = "Uniform Distribution (min=0, max=1)",
    xlab = "x", ylab = "Density"
)
