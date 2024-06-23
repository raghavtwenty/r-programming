# Filename: _056_exponential_realworld.R
# Title: Exponential Distribution Example - Time Between Calls to a Call Center
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: June 23, 2024 | Last Updated: June 23, 2024
# Language: R | Version: 4.4.0

# PROBLEM

# We consider a real-world scenario where the time between calls received by a call center
# follows an exponential distribution with an average rate of 15 calls per hour.


# Parameters for the exponential distribution
rate = 15  # Rate parameter (calls per hour)

# Number of samples to generate
num_samples = 1000

# Generate random waiting times between calls using the exponential distribution
waiting_times = rexp(num_samples, rate = rate)

# Display the first few generated waiting times
print(head(waiting_times))

# Plot the histogram of the generated waiting times
hist(waiting_times,
    breaks = 30,
    col = "lightblue",
    border = "white",
    main = "Exponential Distribution of Time Between Calls to a Call Center",
    xlab = "Waiting Time (minutes)",
    ylab = "Frequency"
)

# Add the theoretical density line
curve(dexp(x, rate = rate) * num_samples * diff(range(waiting_times)) / 30,
    add = TRUE,
    col = "red",
    lwd = 2
)
