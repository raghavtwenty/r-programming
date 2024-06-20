# Filename: _046_uniform_realworld.R
# Title: Uniform Distribution Example - Bus Waiting Time
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: June 20, 2024 | Last Updated: June 20, 2024
# Language: R | Version: 4.4.0

# PROBLEM

# we consider a real-world scenario where the
# waiting time for a bus is uniformly distributed between
# 0 and 30 minutes. This means that any waiting time
# within this interval is equally likely.


# Parameters for the uniform distribution
min_time = 0   # Minimum waiting time (minutes)
max_time = 30  # Maximum waiting time (minutes)

# Number of samples to generate
num_samples = 1000

# Generate random waiting times using the uniform distribution
waiting_times = runif(num_samples, min = min_time, max = max_time)

# Display the first few generated waiting times
print(head(waiting_times))

# Plot the histogram of the generated waiting times
hist(waiting_times,
    breaks = 30,
    col = "lightblue",
    border = "white",
    main = "Uniform Distribution of Bus Waiting Time",
    xlab = "Waiting Time (minutes)",
    ylab = "Frequency"
)

# Add the theoretical density line
curve(dunif(x,
    min = min_time,
    max = max_time) * num_samples * (max_time - min_time) / 30,
    add = TRUE,
    col = "red",
    lwd = 2
)
