# Filename: _051_negative_binomial_dis.R
# Title: Negative Binomial Distribution
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: June 22, 2024 | Last Updated: June 22, 2024
# Language: R | Version: 4.4.0

# Description of functions:
# dnbinom: Negative binomial probability mass function (pmf)
# pnbinom: Negative binomial distribution cumulative distribution function (cdf)
# qnbinom: Negative binomial quantile function
# rnbinom: Negative binomial pseudorandom number generation

# Parameters for the negative binomial distribution
size_param = 10  # Number of successful trials
prob_param = 0.5  # Probability of success in each trial

# Define the number of failures to consider
failures = 80

# Calculate negative binomial probabilities for 0 to 'failures' number of failures
neg_binom_probabilities = dnbinom(0:failures,
    size = size_param,
    prob = prob_param
)

# Display the calculated probabilities
print(neg_binom_probabilities)

# Plot the negative binomial probabilities
plot(0:failures, neg_binom_probabilities,
    col = "blue",
    type = "h",
    lwd = 2,
    main = "Negative Binomial Distribution (size=10, p=0.5)",
    xlab = "Number of Failures",
    ylab = "Probability"
)
