# Filename: _052_negative_binomial_realworld.R
# Title: Negative Binomial Distribution Example - Number of Failures Before a Set Number of Successes
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: June 22, 2024 | Last Updated: June 22, 2024
# Language: R | Version: 4.4.0

# PROBLEM

# We consider a real-world scenario where we are counting the number of failures
# before achieving 10 successes in a series of Bernoulli trials with a probability of success of 0.3.


# Parameters for the negative binomial distribution
num_successes = 10  # Number of successes
prob_success = 0.3  # Probability of success

# Number of samples to generate
num_samples = 1000

# Generate random number of failures using the negative binomial distribution
num_failures = rnbinom(num_samples,
    size = num_successes,
    prob = prob_success
)

# Display the first few generated number of failures
print(head(num_failures))

# Plot the histogram of the generated number of failures
hist(num_failures,
    breaks = 30,
    col = "lightblue",
    border = "white",
    main = "Negative Binomial Distribution of Number of Failures Before 10 Successes",
    xlab = "Number of Failures",
    ylab = "Frequency"
)

# Add the theoretical density line
x_vals = 0:max(num_failures)
points(x_vals,
       dnbinom(x_vals, size = num_successes, prob = prob_success) * num_samples,
    col = "red",
    pch = 16
)
