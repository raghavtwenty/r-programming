# Filename: _042_histograms.R
# Title: Histograms in R
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: June 15, 2024 | Last Updated: June 15, 2024
# Language: R | Version: 4.4.0

# Create data vectors
data1 <- c(4.2, 4.5, 5.1, 5.3, 5.7, 5.9, 6.2, 6.5, 7.1, 7.3, 7.8, 8.1, 8.5, 9.0)
data2 <- c(3.8, 4.1, 4.5, 4.9, 5.3, 5.6, 6.0, 6.4, 6.8, 7.2, 7.6, 8.0, 8.3, 8.7, 9.1)

# Basic histogram for data1
hist(data1,
    main = "Histogram",
    xlab = "Values",
    ylab = "Frequency",
    col = "skyblue",
    border = "black")

# main sets the main title of the plot
# xlab and ylab set the labels for x and y axes

# Adding density line
lines(density(data1), col = "red", lwd = 2)
# col sets the color of the line
# lwd sets the width of the line

# Adding rug plot (ticks at the bottom indicating individual data points)
rug(data1, col = "blue", lwd = 2)

# rug adds a rug plot
# col sets the color of the ticks
# lwd sets the width of the ticks

# Adding a second histogram for data2 in the same plot
hist(data2,
    breaks = 5,
    main = "Overlayed Histograms",
    xlab = "Values",
    ylab = "Density",
    col = rgb(1, 0, 0, 0.5),
    border = "black",
    probability = TRUE,
    add = TRUE)

# rgb creates a color with transparency (alpha)
# add = TRUE adds this histogram to the existing plot

# Adding legend
legend("topright",
    legend = c("Data1", "Data2"),
    fill = c("skyblue", rgb(1, 0, 0, 0.5)),
    border = "black")

# "topright" specifies the position of the legend
# fill sets the fill color for legend items
