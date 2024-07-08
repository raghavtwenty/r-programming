# Filename: _077_precision_recall.R
# Title: Precision Recall curve in R
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: July 7, 2024 | Last Updated: July 8, 2024
# Language: R | Version: 4.4.0

# Load necessary libraries
# install.packages('pROC')
# install.packages('PRROC')
library(pROC)
library(PRROC)

# Load the iris dataset
data(iris)

# Create a binary classification problem: Setosa vs. Non-Setosa
iris$binary_class <- ifelse(iris$Species == "setosa", 1, 0)

# Split the data into training and test sets
set.seed(123) # For reproducibility
trainIndex <- createDataPartition(iris$binary_class, p = 0.7, list = FALSE)
train_data <- iris[trainIndex, ]
test_data <- iris[-trainIndex, ]

# Train a logistic regression model
model <- glm(binary_class ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width, 
             data = train_data, family = binomial)

# Predict probabilities on the test set
test_data$probabilities <- predict(model, test_data, type = "response")

# Calculate the precision-recall values
pr <- pr.curve(scores.class0 = test_data$probabilities, weights.class0 = test_data$binary_class, curve = TRUE)

# Plot the precision-recall curve
plot(pr, main = "Precision-Recall Curve for Iris Dataset", col = "blue", lwd = 2)

# Display the Area Under the Precision-Recall Curve (AUC-PR)
auc_pr <- pr$auc.integral
legend("bottomleft", legend = paste("AUC-PR =", round(auc_pr, 2)), col = "blue", lwd = 2)
