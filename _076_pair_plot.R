# Filename: _076_pair_plot.R
# Title: Pair plot in R
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: July 6, 2024 | Last Updated: July 6, 2024
# Language: R | Version: 4.4.0

# Dataset
info <- data.frame(
    maths = c(60, 80, 53, 85, 45, 55, 72, 63),
    english = c(70, 65, 60, 79, 80, 68, 78, 73),
    history = c(75, 66, 50, 71, 80, 70, 65, 68),
    geography = c(58, 75, 48, 77, 84, 70, 65, 68),
    chemistry = c(53, 70, 45, 68, 44, 70, 65, 68),
    physics = c(42, 76, 43, 79, 46, 70, 65, 68)
)

# Print the dataframe
print(info)

# Customize pairs plot with colors and symbols
pairs(info, 
      col = c("blue", "green", "red")[as.numeric(cut(info$maths, 3))],  # colors based on math grades
      pch = c(1, 2)[as.numeric(cut(info$physics, 2))],  # colors based on physics grades
      main = "Pairwise Relationships of Subjects",
      labels = c("Maths", "English", "History", "Geography", "Chemistry", "Physics"),
)


