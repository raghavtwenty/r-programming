# Filename: _084_stepwise_regression.R
# Title: Stepwise Regression in R
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: August 5, 2024 | Last Updated: August 5, 2024
# Language: R | Version: 4.4.0

# load necessary packages
library(caret)
library(leaps)
library(MASS)

# Load the dataset
data("swiss")

# Full model including all predictors
full.model <- lm(Fertility ~ ., data = swiss)

# Stepwise regression using AIC
step.model <- stepAIC(full.model, direction = "both", trace = FALSE)
summary(step.model)

# Best subset regression using leaps
models <- regsubsets(Fertility ~ ., data = swiss, nvmax = 5, method = "seqrep")
models_summary <- summary(models)

# Summary
print(models_summary)

# Cross-validation 
set.seed(123)
train.control <- trainControl(method = "cv", number = 10)

# Stepwise regression using caret
step.model_caret <- train(Fertility ~ .,
                        data = swiss, 
                        method = "leapBackward",
                        tuneGrid = data.frame(nvmax = 1:5),
                        trControl = train.control)

# Print results
print(step.model_caret$results)
print(step.model_caret$bestTune)
print(summary(step.model_caret$finalModel))
print(coef(step.model_caret$finalModel, 4))
