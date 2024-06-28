# Filename: _070_t_test_realworld.R
# Title: Realworld example for t test
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: June 28, 2024 | Last Updated: June 28, 2024
# Language: R | Version: 4.4.0


# Suppose you work in a company that is considering implementing a 
# new training program aimed at improving employee productivity. 
# You want to determine if there is a statistically significant difference in 
# productivity scores before and after implementing the training program.

# Example data (productivity scores)
before_training <- c(85, 78, 92, 88, 79, 91, 82, 86, 90, 84)
after_training <- c(92, 87, 95, 89, 82, 96, 88, 93, 91, 87)

# Perform paired t-test
t_test_result <- t.test(before_training, after_training, paired = TRUE)

# Print test results
print(t_test_result)
