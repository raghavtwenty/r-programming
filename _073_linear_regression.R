# Filename: _073_linear_regression.R
# Title: Simple linear regression in R
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: June 29, 2024 | Last Updated: June 29, 2024
# Language: R | Version: 4.4.0

# Check if ggplot2 is installed, install it if necessary
if (!requireNamespace("ggplot2", quietly = TRUE)) {
  install.packages("ggplot2")
}

# Load necessary libraries
library(ggplot2)

# Read the dataset
house_data <- read.csv("datasets/house_data.csv")

# Display the dataset
print(house_data)

# Perform simple linear regression
model <- lm(rent ~ room, data = house_data)

# Summarize the model
summary(model)

# Plot the actual vs predicted rent values
predicted_rent <- predict(model, house_data)
house_data$predicted_rent <- predicted_rent

# Generate ggplot object
plot <- ggplot(house_data, aes(x = room, y = rent)) +
  geom_point() +
  geom_line(aes(y = predicted_rent), color = "red") +
  labs(title = "Rent vs Room with Linear Regression",
       x = "Number of Rooms",
       y = "Rent")

# Print the plot
print(plot)

# Function to predict rent based on user input
predict_rent <- function(new_room) {
  new_data <- data.frame(room = new_room)
  predicted_rent <- predict(model, new_data)
  return(predicted_rent)
}

# Example user input
new_room <- as.numeric(readline(prompt = "Enter the number of rooms: "))
predicted_rent_for_new_room <- predict_rent(new_room)

cat("Predicted rent for", new_room, "room(s):", predicted_rent_for_new_room, "\n")
