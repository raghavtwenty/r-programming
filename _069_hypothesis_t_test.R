# Filename: _069_hypothesis_t_test.R
# Title: Hypothesis testing - t test
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: June 28, 2024 | Last Updated: June 28, 2024
# Language: R | Version: 4.4.0

# Data
data <- c(23, 25, 28, 32, 27, 30, 31, 29, 26, 24)

# Hypothesized mean
mu <- 28

# Perform one-sample t-test
t_test_result <- t.test(data, mu = mu)

# Print test results
print(t_test_result)

