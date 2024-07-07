# Filename: _078_roc.R
# Title: Receiver Operating Characteristic (ROC) in R
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: July 7, 2024 | Last Updated: July 7, 2024
# Language: R | Version: 4.4.0

# Load necessary libraries
# install.packages('caTools')
# install.packages('pROC')
library(datasets)
library(caTools)
library(pROC)

# Load the iris dataset
data(iris)

# Create a binary classification problem: Setosa vs. Non-Setosa
iris$binary_class <- ifelse(iris$Species == "setosa", 1, 0)
# $ - selects the specific column


# Split the data into training and test sets
set.seed(123) # For reproducibility
split <- sample.split(iris$binary_class, SplitRatio = 0.7)
train_data <- subset(iris, split == TRUE)
test_data <- subset(iris, split == FALSE)

# Train a logistic regression model
model <- glm(binary_class ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width, 
             data = train_data, family = binomial)

# Predict probabilities on the test set
test_data$probabilities <- predict(model, test_data, type = "response")

# Create the ROC curve
roc_curve <- roc(test_data$binary_class, test_data$probabilities)

# Plot the ROC curve
plot(roc_curve, main = "ROC Curve for Iris Dataset", col = "blue", lwd = 2)

# Add AUC (Area Under the Curve) to the plot
auc_value <- auc(roc_curve)
legend("bottomright", legend = paste("AUC =", round(auc_value, 2)), col = "blue", lwd = 2)

