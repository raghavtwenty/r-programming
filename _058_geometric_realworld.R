# Filename: _058_geometric_realworld.R
# Title: Geometric Distribution Example - Number of Trials Before First Success
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: June 24, 2024 | Last Updated: June 24, 2024
# Language: R | Version: 4.4.0

# PROBLEM

# We consider a real-world scenario where we are counting the number of trials
# until the first success in a series of Bernoulli trials with a probability of success of 0.2.


# Parameters for the geometric distribution
prob_success = 0.2  # Probability of success

# Number of samples to generate
num_samples = 1000

# Generate random number of trials using the geometric distribution
num_trials = rgeom(n = num_samples, prob = prob_success)

# Display the first few generated number of trials
print(head(num_trials))

# Plot the histogram of the generated number of trials
hist(num_trials,
    breaks = 30,
    col = "lightblue",
    border = "white",
    main = "Geometric Distribution of Number of Trials Before First Success",
    xlab = "Number of Trials",
    ylab = "Frequency"
)

# Add the theoretical density line
curve(dgeom(x,
    prob = prob_success) * num_samples,
    from = 0, to = max(num_trials),
    add = TRUE,
    col = "red",
    lwd = 2
)
