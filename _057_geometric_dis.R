# Filename: _057_geometric_dis.R
# Title: Geometric Distribution
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: June 24, 2024 | Last Updated: June 24, 2024
# Language: R | Version: 4.4.0

# Description of functions:
# dgeom: Geometric probability mass function (pmf)
# pgeom: Geometric distribution cumulative distribution function (cdf)
# qgeom: Geometric quantile function
# rgeom: Geometric pseudorandom number generation

# Parameters for the geometric distribution
prob_param = 0.5  # Probability of success in each trial

# Define the number of failures to consider
failures = 20

# Calculate geometric probabilities for 0 to 'failures' number of failures
geom_probabilities = dgeom(0:failures,
    prob = prob_param
)

# Display the calculated probabilities
print(geom_probabilities)

# Plot the geometric probabilities
plot(0:failures, geom_probabilities,
    col = "purple",
    type = "h",
    lwd = 2,
    main = "Geometric Distribution (p=0.5)",
    xlab = "Number of Failures",
    ylab = "Probability"
)
