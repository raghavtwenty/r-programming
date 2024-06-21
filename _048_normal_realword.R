# Filename: _048_normal_realworld.R
# Title: Normal Distribution Example - Heights of Adult Men
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: June 21, 2024 | Last Updated: June 21, 2024
# Language: R | Version: 4.4.0

# PROBLEM

# We consider a real-world scenario where the heights of adult men are normally distributed
# with a mean of 70 inches and a standard deviation of 3 inches.


# Parameters for the normal distribution
mean_height = 70  # Mean height (inches)
sd_height = 3     # Standard deviation (inches)

# Number of samples to generate
num_samples = 1000

# Generate random heights using the normal distribution
heights = rnorm(num_samples, mean = mean_height, sd = sd_height)

# Display the first few generated heights
print(head(heights))

# Plot the histogram of the generated heights
hist(heights,
    breaks = 30,
    col = "lightblue",
    border = "white",
    main = "Normal Distribution of Heights of Adult Men",
    xlab = "Height (inches)",
    ylab = "Frequency"
)

# Add the theoretical density line
curve(dnorm(x,
    mean = mean_height,
    sd = sd_height) * num_samples * (max(heights) - min(heights)) / 30,
    add = TRUE,
    col = "red",
    lwd = 2
)
