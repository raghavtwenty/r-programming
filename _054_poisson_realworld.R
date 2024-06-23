# Filename: _054_poisson_realworld.R
# Title: Poisson Distribution Example - Number of Calls to a Call Center
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: June 23, 2024 | Last Updated: June 23, 2024
# Language: R | Version: 4.4.0

# PROBLEM

# We consider a real-world scenario where the number of calls received by a call center
# in an hour follows a Poisson distribution with an average rate of 15 calls per hour.


# Parameters for the Poisson distribution
lambda = 15  # Average rate (calls per hour)

# Number of samples to generate
num_samples = 1000

# Generate random number of calls using the Poisson distribution
num_calls = rpois(num_samples, lambda = lambda)

# Display the first few generated number of calls
print(head(num_calls))

# Plot the histogram of the generated number of calls
hist(num_calls,
    breaks = 30,
    col = "lightblue",
    border = "white",
    main = "Poisson Distribution of Number of Calls to a Call Center",
    xlab = "Number of Calls",
    ylab = "Frequency"
)

# Add the theoretical density line
x_vals = 0:max(num_calls)
points(x_vals,
       dpois(x_vals, lambda = lambda) * num_samples,
    col = "red",
    pch = 16
)
