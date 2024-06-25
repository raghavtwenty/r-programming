# Filename: _062_alpha_realworld.R
# Title: Alpha (Inverse Gamma) Distribution Example - Lifetime of a Machine Part
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: June 25, 2024 | Last Updated: June 25, 2024
# Language: R | Version: 4.4.0

# PROBLEM

# We consider a real-world scenario where the lifetime (in hours) of a machine part
# follows an Alpha distribution (Inverse Gamma distribution) with shape parameter 2
# and rate parameter 1.


# Inverse Gamma (Alpha) distribution density function
dalpha <- function(x, shape, rate) {
  return (rate^shape / gamma(shape) * x^(-shape - 1) * exp(-rate / x))
}

# Parameters for the Alpha (Inverse Gamma) distribution
shape_param = 2  # Shape parameter (alpha)
rate_param = 1   # Rate parameter (beta)

# Number of samples to generate
num_samples = 1000

# Generate random lifetimes using the Alpha (Inverse Gamma) distribution
lifetimes = rgamma(num_samples, shape = shape_param, rate = rate_param)

# Display the first few generated lifetimes
print(head(lifetimes))

# Plot the histogram of the generated lifetimes
hist(lifetimes,
    breaks = 30,
    col = "lightblue",
    border = "white",
    main = "Alpha (Inverse Gamma) Distribution of Lifetime of a Machine Part",
    xlab = "Lifetime (hours)",
    ylab = "Frequency"
)

# Add the theoretical density line
curve(dalpha(x, shape = shape_param, rate = rate_param) * num_samples * (max(lifetimes) - min(lifetimes)) / 30,
    add = TRUE,
    col = "red",
    lwd = 2
)
