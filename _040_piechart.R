# Filename: _040_piechart.R
# Title: Pie Chart in R
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: June 14, 2024 | Last Updated: June 14, 2024
# Language: R | Version: 4.4.0

# Create data vectors
fruit <- c("Apples", "Bananas", "Cherries", "Dates", "Elderberries")
counts <- c(23, 17, 35, 10, 7)

# Calculate percentages
percentages <- round(counts / sum(counts) * 100)

# Create labels with percentages
labels <- paste(fruit, percentages, "%")

# Customized pie chart
pie(counts,
    labels = labels,
    col = rainbow(length(fruit)),   # Use rainbow colors
    main = "Fruit Distribution",
)    # Main title

# Adding a legend
legend("topright",
    legend = fruit,
    fill = rainbow(length(fruit)),
    title = "Fruit Types",
)
