# Filename: _077_pca.R
# Title: Principal Component Analysis (PCA) in R
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: July 7, 2024 | Last Updated: July 7, 2024
# Language: R | Version: 4.4.0

# Load necessary libraries
# install.packages('dplyr')
library(stats)
library(dplyr)

# View the iris dataset
View(iris)

# Select the first four columns of the iris dataset (excluding the species column)
mydata <- select(iris, c(1, 2, 3, 4))

# Calculate the correlation matrix
cor_matrix <- cor(mydata)
print(cor_matrix)

# Calculate the mean of the correlation coefficients
mean_cor <- mean(cor_matrix)
print(mean_cor)

# Perform Principal Component Analysis (PCA)
PCA <- princomp(mydata)

# Display the loadings of the PCA
print(PCA$loadings)

# Summary of PCA results
summary(PCA)

# Extract the PCA scores
PC <- PCA$scores

# View the first few PCA scores
View(PC)

# Calculate the correlation matrix of the PCA scores
cor_PC <- cor(PC)
print(cor_PC)

# Plot the PCA results
plot(PCA)
screeplot(PCA, type = "line", main = "Screeplot")

# Create a biplot of the PCA
biplot(PCA)

# View the first 10 PCA scores
print(PCA$scores[1:10,])

