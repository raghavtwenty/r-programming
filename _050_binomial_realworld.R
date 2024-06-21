# Filename: _050_binomial_realworld.R
# Title: Binomial Distribution Example - Number of Heads in Coin Tosses
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: June 21, 2024 | Last Updated: June 21, 2024
# Language: R | Version: 4.4.0

# PROBLEM

# We consider a real-world scenario where a fair coin is tossed 100 times,
# and we want to find the distribution of the number of heads.


# Parameters for the binomial distribution
num_trials = 100   # Number of coin tosses
prob_head = 0.5    # Probability of getting heads

# Number of samples to generate
num_samples = 1000

# Generate random number of heads using the binomial distribution
num_heads = rbinom(num_samples,
    size = num_trials,
    prob = prob_head)

# Display the first few generated number of heads
print(head(num_heads))

# Plot the histogram of the generated number of heads
hist(num_heads,
    breaks = 30,
    col = "lightblue",
    border = "white",
    main = "Binomial Distribution of Number of Heads in 100 Coin Tosses",
    xlab = "Number of Heads",
    ylab = "Frequency"
)

# Add the theoretical density line
x_vals = 0:num_trials
    points(x_vals,
    dbinom(x_vals, size = num_trials, prob = prob_head) * num_samples,
    col = "red",
    pch = 16
)
