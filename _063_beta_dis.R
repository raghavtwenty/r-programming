# Filename: _063_beta_dis.R
# Title: Beta Distribution
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: June 26, 2024 | Last Updated: June 26, 2024
# Language: R | Version: 4.4.0

# Description of functions:
# dbeta: Beta probability density function (pdf)
# pbeta: Beta distribution cumulative distribution function (cdf)
# qbeta: Beta quantile function
# rbeta: Beta pseudorandom number generation

# Parameters for the Beta distribution
shape1_param = 2  # Shape parameter alpha
shape2_param = 5  # Shape parameter beta

# Define the range of values to consider
x_values = seq(0, 1, by = 0.01)

# Calculate beta densities for the range of values
beta_densities = dbeta(x_values, shape1 = shape1_param, shape2 = shape2_param)

# Display the calculated densities
print(beta_densities)

# Plot the beta densities
plot(x_values, beta_densities, col = "blue", type = "l", lwd = 2,
     main = "Beta Distribution (shape1=2, shape2=5)",
     xlab = "x", ylab = "Density")

# Add another line with different parameters
shape1_param2 = 1  # Another shape parameter alpha
shape2_param2 = 1  # Another shape parameter beta

# Calculate densities for the second set of parameters
beta_densities2 = dbeta(x_values, shape1 = shape1_param2, shape2 = shape2_param2)

# Plot the second set of beta densities
lines(x_values, beta_densities2, col = "red", lwd = 2)

# Add legend
legend("topright", legend = c("Beta (2, 5)", "Beta (1, 1)"), col = c("blue", "red"), lwd = 2)
