# Filename: _039_barplot.R
# Title: Barplot in R
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: June 14, 2024 | Last Updated: June 14, 2024
# Language: R | Version: 4.4.0

# Create data vectors
fruit <- c("Apples", "Bananas", "Cherries", "Dates", "Elderberries")
counts <- c(23, 17, 35, 10, 7)

# Customized bar plot
barplot(counts,
        names.arg = fruit,
        col = rainbow(length(fruit)),   # Use rainbow colors
        main = "Fruit Counts",          # Main title
        xlab = "Type of Fruit",         # X-axis label
        ylab = "Count",                 # Y-axis label
        ylim = c(0, max(counts) + 5),   # Y-axis limits
        border = "blue",                # Border color for the bars
        las = 1,                        # Make the labels perpendicular to the axis
        cex.names = 0.8,                # Change size of the names on X-axis
        cex.axis = 0.8)                 # Change size of the labels on Y-axis

# Adding text at the top of each bar
text(x = seq_along(counts),
    y = counts,
    label = counts,
    pos = 3,                           # Position above the bar
    cex = 0.8,                         # Text size
    col = "black",
)                     # Text color

# Adding a legend
legend("topright",
    legend = fruit,
    fill = rainbow(length(fruit)),
    title = "Fruit Types",
)
