# Filename: _081_lda.R
# Title: Linear Discriminant Analysis in R
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: August 4, 2024 | Last Updated: August 4, 2024
# Language: R | Version: 4.4.0

# Load required library
library(rattle)
library(MASS)

# Load the wine dataset
data(wine, package = "rattle")
attach(wine)  
head(wine)

# Perform Linear Discriminant Analysis (LDA)
wine.lda <- lda(Type ~ ., data = wine)

# Print the LDA model to see the discriminant function loadings
print(wine.lda)

# Predict the discriminant values
wine.lda.values <- predict(wine.lda)

# Histograms 
ldahist(data = wine.lda.values$x[, 1], g = Type, main = "Histogram of LDA1")
ldahist(data = wine.lda.values$x[, 2], g = Type, main = "Histogram of LDA2")

# Create scatter plots 
plot(wine.lda.values$x[, 1], wine.lda.values$x[, 2], 
     xlab = "LDA1", ylab = "LDA2", main = "Scatterplot of LDA1 vs LDA2")
abline(v = 0, h = 0, col = "red")  

# Detach the dataset
detach(wine)
