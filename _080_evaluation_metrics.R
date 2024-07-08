# Filename: _080_evaluation_metrics.R
# Title: Evaluation metrics in R
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: July 8, 2024 | Last Updated: July 8, 2024
# Language: R | Version: 4.4.0

# Load required library
library(datasets)  # for iris dataset
library(class)     # for knn function

# Load the Iris dataset
data(iris)

# Convert species from factor to character for easier manipulation 
iris$Species <- as.character(iris$Species)

# Split the dataset into training and testing sets
set.seed(123)  # for reproducibility
sample <- sample(2, nrow(iris), replace=TRUE, prob=c(0.8, 0.2))
train <- iris[sample == 1, ]
test <- iris[sample == 2, ]

# Build a k-nearest neighbors classification model
predicted <- knn(train[, -5], test[, -5], train$Species, k = 3)

# Calculate accuracy
accuracy <- mean(predicted == test$Species)
cat("Accuracy:", accuracy, "\n")

# Confusion Matrix
conf_matrix <- table(predicted, test$Species)
cat("\nConfusion Matrix:\n")
print(conf_matrix)

# Precision, Recall, and F1 Score
# Function to calculate precision, recall, and F1 score
calc_precision_recall_f1 <- function(conf_matrix) {
  # Extracting values from confusion matrix
  TP <- conf_matrix[2, 2]
  TN <- conf_matrix[1, 1]
  FP <- conf_matrix[2, 1]
  FN <- conf_matrix[1, 2]
  
  # Calculate precision
  precision <- TP / (TP + FP)
  
  # Calculate recall (sensitivity)
  recall <- TP / (TP + FN)
  
  # Calculate F1 score
  f1_score <- 2 * (precision * recall) / (precision + recall)
  
  # Return metrics
  return(list(precision = precision, recall = recall, f1_score = f1_score))
}

# Calculate precision, recall, and F1 score
metrics <- calc_precision_recall_f1(conf_matrix)
cat("\nPrecision:", metrics$precision, "\n")
cat("Recall:", metrics$recall, "\n")
cat("F1 Score:", metrics$f1_score, "\n")
