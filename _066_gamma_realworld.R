# Filename: _066_gamma_realworld.R
# Title: Gamma Distribution Example - Time Until Equipment Failure
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: June 27, 2024 | Last Updated: June 27, 2024
# Language: R | Version: 4.4.0

# PROBLEM

# We consider a real-world scenario where the time until failure (in hours)
# of a certain type of equipment follows a Gamma distribution with shape parameter 3
# and rate parameter 0.5.

# Description of functions:
# dgamma: Gamma probability density function (pdf)
# pgamma: Gamma distribution cumulative distribution function (cdf)
# qgamma: Gamma quantile function
# rgamma: Gamma pseudorandom number generation

# Parameters for the Gamma distribution
shape_param = 3  # Shape parameter (alpha)
rate_param = 0.5 # Rate parameter (beta)

# Number of samples to generate
num_samples = 1000

# Generate random times until failure using the Gamma distribution
times_until_failure = rgamma(num_samples, shape = shape_param, rate = rate_param)

# Display the first few generated times until failure
print(head(times_until_failure))

# Plot the histogram of the generated times until failure
hist(times_until_failure,
    breaks = 30,
    col = "lightblue",
    border = "white",
    main = "Gamma Distribution of Time Until Equipment Failure",
    xlab = "Time Until Failure (hours)",
    ylab = "Frequency"
)

# Add the theoretical density line
curve(dgamma(x, shape = shape_param, rate = rate_param) * num_samples * (max(times_until_failure) - min(times_until_failure)) / 30,
    add = TRUE,
    col = "red",
    lwd = 2
)
