# Filename: _074_multi_linear_regression.R
# Title: Multi linear regression in R
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: June 29, 2024 | Last Updated: June 29, 2024
# Language: R | Version: 4.4.0

# Check if ggplot2 is installed, install it if necessary
if (!requireNamespace("ggplot2", quietly = TRUE)) {
  install.packages("ggplot2")
}

# Now load ggplot2
library(ggplot2)

# Continue with your code
# Read the dataset
house_data <- read.csv("datasets/house_data.csv")

# Display the dataset
print(house_data)

# Perform linear regression
model <- lm(rent ~ room + window + door, data = house_data)

# Summarize the model
summary(model)

# Plot the actual vs predicted rent values
predicted_rent <- predict(model, house_data)
house_data$predicted_rent <- predicted_rent

# Generate ggplot object
plot <- ggplot(house_data, aes(x = rent, y = predicted_rent)) +
  geom_point() +
  geom_abline(slope = 1, intercept = 0, color = "red") +
  labs(title = "Actual vs Predicted Rent",
       x = "Actual Rent",
       y = "Predicted Rent")

# Print the plot
print(plot)


# Function to predict rent based on user input
predict_rent <- function(new_room, new_window, new_door) {
  new_data <- data.frame(room = new_room, window = new_window, door = new_door)
  predicted_rent <- predict(model, new_data)
  return(predicted_rent)
}

# Example user input
new_room <- as.numeric(readline(prompt = "Enter the number of rooms: "))
new_window <- as.numeric(readline(prompt = "Enter the number of windows: "))
new_door <- as.numeric(readline(prompt = "Enter the number of doors: "))
predicted_rent_for_new_input <- predict_rent(new_room, new_window, new_door)

cat("Predicted rent for", new_room, "room(s),", new_window, "window(s), and", new_door, "door(s):", predicted_rent_for_new_input, "\n")
