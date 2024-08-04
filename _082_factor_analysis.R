# Filename: _082_factor_analysis.R
# Title: Factor Analysis in R
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: August 4, 2024 | Last Updated: August 4, 2024
# Language: R | Version: 4.4.0

# Load the dataset
data(iris)

# Factor Analysis
fa_result <- factanal(factors = 1, covmat = cor(iris[, 1:4]), rotation = "varimax")

# Print factor loadings
print(fa_result$loadings, cutoff = 0.3)  

# Print uniquenesses
print(fa_result$uniquenesses)

# Eigenvalues 
print(fa_result$values)

# Final Show
print(summary(fa_result))
