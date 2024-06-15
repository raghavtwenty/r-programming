# Filename: _043_boxplot.R
# Title: Boxplot in R
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: June 15, 2024 | Last Updated: June 15, 2024
# Language: R | Version: 4.4.0

# Create data vectors
group1 <- c(5.1, 5.5, 5.9, 6.0, 6.3, 6.8, 7.0)
group2 <- c(4.8, 5.0, 5.3, 5.6, 6.0, 6.1, 6.4)
group3 <- c(6.2, 6.4, 6.8, 7.0, 7.1, 7.3, 7.5)

# Combine data into a data frame
data <- data.frame(
    Group = factor(rep(c("Group1", "Group2", "Group3"),
    each = 7)),
    Values = c(group1, group2, group3)
)

# Basic box plot
boxplot(Values ~ Group,
    data = data,
    main = "Box Plot of Groups",
    xlab = "Groups",
    ylab = "Values",
    col = c("skyblue", "lightgreen", "lightcoral"),
    border = "black")

# boxplot creates the box plot
# Values ~ Group specifies the formula for the plot

# Adding grid lines
grid(nx = NULL, ny = NULL, col = "gray", lty = "dotted")

# nx and ny specify the number of grid lines in x and y direction (NULL means auto-determined)
# col sets the color of the grid lines
# lty sets the line type (dotted, dashed, etc.)
