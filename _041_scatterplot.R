# Filename: _041_scatterplot.R
# Title: Scatter plot in R
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: June 14, 2024 | Last Updated: June 14, 2024
# Language: R | Version: 4.4.0

# Create data vectors
height <- c(150, 160, 170, 180, 190)
weight <- c(50, 60, 70, 80, 90)

# Customized scatter plot
plot(height, weight,
    main = "Scatter Plot of Height vs. Weight", # Main title
    xlab = "Height (cm)",                       # X-axis label
    ylab = "Weight (kg)",                       # Y-axis label
    pch = 19,                                   # Point shape
    col = "blue",                               # Point color
    cex = 1.5,
)                                  # Point size

# Adding a regression line
abline(lm(weight ~ height), col = "red", lwd = 2)

# Adding grid lines
grid(col = "gray", lty = "dotted")

# Adding text labels at each point
text(height,
    weight,
    labels = paste("(", height, ",", weight, ")", sep = ""),
    pos = 4, cex = 0.8, col = "black",
)
