# Filename: _002_data_structures.R
# Title: Data structures in R
# Author: Raghava | GitHub : @raghavtwenty
# Date Created: June 20, 2023 | Last Updated: May 24, 2024
# Language: R | Version: 4.4.0


# Factors
gender <- c("Male", "Female", "Male", "Female", "Female")
factor_gender <- factor(gender)
print(factor_gender)
print(levels(factor_gender))

# Vectors
my_vector <- c("hi","hello","bye")
print(my_vector)

# Lists
my_list <- list(name = "Raghava", age = 20, category = "Student")
print(my_list)

# Matrices
my_matrix <- matrix(1:9, nrow = 3, ncol = 3)
print(my_matrix)

# Arrays
my_array <- array(1:12, dim = c(2, 3, 2))
print(my_array)

# Data Frames
my_df <- data.frame(
    string = c("Hello", "Good"),
    length = c(5,4),
    starting_letter = c("H", "G")
)
print(my_df)

# Dates and Times
today <- Sys.Date()
print(today)
