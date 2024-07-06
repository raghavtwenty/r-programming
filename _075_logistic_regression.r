# Filename: _075_logistic_regression.R
# Title: Logistic regression in R
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: July 6, 2024 | Last Updated: July 6, 2024
# Language: R | Version: 4.4.0

# Load necessary libraries
install.packages('popbio')
library(popbio)

# Load the dataset
students <- read.csv("/datasets/student_data.csv")

# View the dataset 
View(students)

# Extract the relevant columns
Gender <- students$Gender
Marks <- students$Marks

# Convert Gender to a binary code: 1 for Female, 0 for Male
Gendercode <- ifelse(Gender == "F", 1, 0)

# Plot the data
plot(Marks, jitter(Gendercode, 1), pch = 19, xlab = "Exam grade(mm)", ylab = "Gender (0-male, 1-female)")

# Fit the logistic regression model
model <- glm(Gendercode ~ Marks, family = binomial)

# Create a sequence of values for Marks to predict Gendercode
xv <- seq(min(Marks), max(Marks), 0.01)

# Predict Gendercode using the logistic regression model
yv <- predict(model, list(Marks = xv), type = "response")

# Add the prediction line to the plot
lines(xv, yv, col = "red")

# Create a histogram plot with logistic regression fit
logi.hist.plot(Marks, Gendercode, boxp = FALSE, type = "count", col = "gray", xlabel = "Marks")

# Function to predict gender based on new input for exam grade
predict_gender <- function(new_mark) {
  # Create a data frame with the new mark
  new_data <- data.frame(Marks = new_mark)
  
  # Predict the probability of being female (Gendercode = 1)
  predicted_prob <- predict(model, new_data, type = "response")
  
  # Convert probability to class label
  if(predicted_prob > 0.5) {
    return("Female")
  } else {
    return("Male")
  }
}

# New prediction
new_mark <- 85  
predicted_gender <- predict_gender(new_mark)
cat("Predicted gender for the given mark (", new_mark, ") is:", predicted_gender, "\n")
