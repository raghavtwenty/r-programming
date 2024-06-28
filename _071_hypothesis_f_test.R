# Filename: _071_hypothesis_f_test.R
# Title: Hypothesis testing - f test
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: June 28, 2024 | Last Updated: June 28, 2024
# Language: R | Version: 4.4.0

# Set seed for reproducibility
set.seed(123)

# Generate example data
group1 <- rnorm(20, mean = 10, sd = 2)   # Sample 1 with mean 10 and SD 2
group2 <- rnorm(20, mean = 10, sd = 5)   # Sample 2 with mean 10 and SD 5

# Perform F-test for variances
f_test_result <- var.test(group1, group2)

# Print test results
print(f_test_result)
