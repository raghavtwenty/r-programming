# Filename: _059_hyper_geometric_dis.R
# Title: Hypergeometric Distribution
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: June 24, 2024 | Last Updated: June 24, 2024
# Language: R | Version: 4.4.0

# Description of functions:
# dhyper: Hypergeometric probability mass function (pmf)
# phyper: Hypergeometric distribution cumulative distribution function (cdf)
# qhyper: Hypergeometric quantile function
# rhyper: Hypergeometric pseudorandom number generation

# Parameters for the hypergeometric distribution
m_param = 50  # Number of white balls
n_param = 50  # Number of black balls
k_param = 10  # Number of draws

# Define the number of white balls drawn
success = 0:k_param

# Calculate hypergeometric probabilities for drawing 'success' white balls
hypergeom_probabilities = dhyper(success,
    m = m_param,
    n = n_param,
    k = k_param
)

# Display the calculated probabilities
print(hypergeom_probabilities)

# Plot the hypergeometric probabilities
plot(success,
    hypergeom_probabilities,
    col = "orange",
    type = "h",
    lwd = 2,
    main = "Hypergeometric Distribution (m=50, n=50, k=10)",
    xlab = "Number of White Balls Drawn",
    ylab = "Probability"
)
