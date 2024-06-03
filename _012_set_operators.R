# Filename: _012_set_operators.R
# Title: List of all set operators in R
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: June 3, 2024 | Last Updated: June 3, 2024
# Language: R | Version: 4.4.0


# Set Operations
a <- c(1, 2, 3)
b <- c(2, 3, 4)
cat("a - (1, 2, 3)\n")
cat("b - (2, 3, 4)\n")

# Union
set_union <- union(a, b)
cat("Union of a and b:", set_union, "\n")

# Intersection
set_intersection <- intersect(a, b)
cat("Intersection of a and b:", set_intersection, "\n")

# Difference
set_difference <- setdiff(a, b)
cat("Difference of a and b:", set_difference, "\n")

# Equality
set_equality <- setequal(a, c(3, 2, 1))
cat("Set equality of a and c(3, 2, 1):", set_equality, "\n")

# Element in a set
is_elem <- is.element(2, a)
cat("Check if element 2 is in a:", is_elem, "\n")
