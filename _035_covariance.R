# Filename: _035_covariance.R
# Title: Covariance in R
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: June 12, 2024 | Last Updated: June 12, 2024
# Language: R | Version: 4.4.0

# Vector
x <- c(54, 85, 86, 50, 42, 75, 65, 56)
y <- c(2.45, 1.21, 1.20, 2.84, 3.25, 1.86, 1.90, 2.32)

# Compute covariance
covariance <- cov(x, y)

print("Vector covariance:")
print(covariance)

# Matrix
data_matrix <- matrix(c(54, 2.45,
                        85, 1.21,
                        86, 1.20,
                        50, 2.84,
                        42, 3.25,
                        75, 1.86,
                        65, 1.90,
                        56, 2.32), ncol = 2, byrow = TRUE)

# Compute covariance matrix
covariance_matrix <- cov(data_matrix)

print("Matrix covariance:")
print(covariance_matrix)
