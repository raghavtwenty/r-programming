# Filename: _044_stripchart.R
# Title: Stripchart in R
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: June 15, 2024 | Last Updated: June 15, 2024
# Language: R | Version: 4.4.0

# Create data vectors
group1 <- c(1.5, 2.0, 2.5, 3.0, 3.5, 4.0, 4.5)
group2 <- c(2.0, 2.2, 2.4, 2.6, 2.8, 3.0, 3.2)
group3 <- c(1.0, 1.2, 1.4, 1.6, 1.8, 2.0, 2.2)

# Combine data into a list for easier plotting
data <- list(Group1 = group1, Group2 = group2, Group3 = group3)

# Create a basic stripchart
stripchart(data,
    method = "jitter",  # Adding jitter method to prevent overplotting
    pch = 19,   # Plotting character to solid circle
    col = c("red", "blue", "green"),
    vertical = TRUE,
    main = "Customized Stripchart",
    xlab = "Groups",    # Labels
    ylab = "Values")

# Adding grid lines
grid(nx = NULL, ny = NULL, col = "gray", lty = "dotted")

# nx and ny specify the number of grid lines in x and y direction (NULL means auto-determined)
# col sets the color of the grid lines
# lty sets the line type (dotted, dashed, etc.)

# Adding a legend
legend("topright", legend = names(data), col = c("red", "blue", "green"), pch = 19, title = "Groups")

# "topright" specifies the position of the legend
# pch sets the plotting character in the legend

# Adding individual data point labels (optional)
text(x = rep(1, length(group1)), y = group1, labels = round(group1, 1), pos = 3, cex = 0.8, col = "red")
text(x = rep(2, length(group2)), y = group2, labels = round(group2, 1), pos = 3, cex = 0.8, col = "blue")
text(x = rep(3, length(group3)), y = group3, labels = round(group3, 1), pos = 3, cex = 0.8, col = "green")

# text adds text labels to the points
# labels specifies the text labels
# pos = 3 places the labels above the points
# cex controls the size of the text
# col sets the color of the text
