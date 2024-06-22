# Filename: _053_poisson_dis.R
# Title: Poisson Distribution
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: June 22, 2024 | Last Updated: June 22, 2024
# Language: R | Version: 4.4.0

# Description of functions:
# dpois: Poisson probability mass function (pmf)
# ppois: Poisson distribution cumulative distribution function (cdf)
# qpois: Poisson quantile function
# rpois: Poisson pseudorandom number generation

# Parameters for the Poisson distribution
lambda_param = 10  # Average rate (lambda)

# Define the number of occurrences to consider
occurrences = 30

# Calculate Poisson probabilities for 0 to 'occurrences' number of occurrences
poisson_probabilities = dpois(0:occurrences,
    lambda = lambda_param
)

# Display the calculated probabilities
print(poisson_probabilities)

# Plot the Poisson probabilities
plot(0:occurrences, poisson_probabilities,
    col = "green",
    type = "h",
    lwd = 2,
    main = "Poisson Distribution (lambda=10)",
    xlab = "Number of Occurrences",
    ylab = "Probability"
)
