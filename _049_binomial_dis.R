# Filename: _049_binomial_dis.R
# Title: Binomial Distribution
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: June 21, 2024 | Last Updated: June 21, 2024
# Language: R | Version: 4.4.0

# Description of functions:
# dbinom: Binomial probability mass function (pmf)
# pbinom: Binomial distribution cumulative distribution function (cdf)
# qbinom: Binomial quantile function
# rbinom: Binomial pseudorandom number generation

# Parameters for the binomial distribution
success = 80  # Define the number of successes to consider

# Calculate binomial probabilities for 1 to 'success' number of successes out of 100 trials
probabilities = dbinom(1:success,
    size = 100,
    prob = 0.5
)

# Display the calculated probabilities
print(probabilities)

# Plot the binomial probabilities
plot(1:success, probabilities,
    col = "red",
    type = "h",
    lwd = 2,
    main = "Binomial Distribution (n=100, p=0.5)",
    xlab = "Number of Successes",
    ylab = "Probability"
)
