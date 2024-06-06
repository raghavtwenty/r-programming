# Filename: _019_factors.R
# Title: Factors and its built-in functions in R
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: June 6, 2024 | Last Updated: June 6, 2024
# Language: R | Version: 4.4.0


# Factors
# Creating a factor
print("Creating a factor")
factor_vector <- factor(c("A", "B", "A", "C", "B"))
print(factor_vector)

# Converting character to factor
print("Converting character to factor")
char_vector <- c("Male", "Female", "Female", "Male", "Male")
factor_vector <- as.factor(char_vector)
print(factor_vector)

# Getting levels of a factor
print("Getting levels of a factor")
levels_vector <- levels(factor_vector)
print(levels_vector)

# Getting the number of levels of a factor
print("Getting the number of levels of a factor")
num_levels <- nlevels(factor_vector)
print(num_levels)

# Checking if an object is a factor
print("Checking if an object is a factor")
is_factor <- is.factor(factor_vector)
print(is_factor)

# Checking for missing values in a factor
print("Checking for missing values in a factor")
has_missing_values <- anyNA(factor_vector)
print(has_missing_values)

# Reordering levels of a factor
print("Reordering levels of a factor")
factor_vector <- factor(factor_vector, levels = c("Female", "Male"))
print(factor_vector)

# Dropping unused levels of a factor
print("Dropping unused levels of a factor")
factor_vector <- droplevels(factor_vector)
print(factor_vector)

# Renaming levels of a factor
print("Renaming levels of a factor")
levels(factor_vector) <- c("F", "M")
print(factor_vector)

# Adding new levels to a factor
print("Adding new levels to a factor")
factor_vector <- factor(factor_vector, levels = c(levels(factor_vector), "Other"))
print(factor_vector)

# Checking if levels of two factors are the same
print("Checking if levels of two factors are the same")
factor_vector2 <- factor(c("A", "B", "C", "D", "E"))
are_levels_same <- identical(levels(factor_vector), levels(factor_vector2))
print(are_levels_same)
