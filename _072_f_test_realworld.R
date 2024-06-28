# Filename: _072_f_test_realworld.R
# Title: Realworld example for f test
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: June 29, 2024 | Last Updated: June 29, 2024
# Language: R | Version: 4.4.0

# Imagine you work in a manufacturing company that 
# produces a certain type of component. There are two different machines used 
# in the manufacturing process: Machine A and Machine B. The quality control 
# team wants to ensure that the variability in the 
# measurements (e.g., dimensions of the components) produced by these 
# machines is consistent. They collected samples from both machines and want 
# to determine if there is a significant difference in variance between the two machines.

# Example data
set.seed(123)  # for reproducibility

machine_A_data <- rnorm(30, mean = 100, sd = 5)   # Data from Machine A
machine_B_data <- rnorm(30, mean = 100, sd = 7)   # Data from Machine B

# Perform F-test for variances
f_test_result <- var.test(machine_A_data, machine_B_data)

# Print test results
print(f_test_result)
