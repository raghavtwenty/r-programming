# Filename: _010_logical_operators.R
# Title: List of all logical operators in R
# Author: Raghava | GitHub : @raghavtwenty
# Date Created: June 3, 2024 | Last Updated: June 3, 2024
# Language: R | Version: 4.4.0

# Logical Operations
a <- TRUE
b <- FALSE
print("a - TRUE")
print("b - FALSE")

# Logical AND
and <- a && b
print(paste(a,"Logical AND",b,":",and))

# Logical OR
or <- a || b
print(paste(a,"Logical OR",b,":",or))

# Logical NOT
not <- !a
print(paste("Logical NOT",a,":",not))

# Element-wise logical AND
and_element <- c(TRUE, FALSE) & c(FALSE, TRUE)
print(paste("Element wise Logical AND",":",and_element))

# Element-wise logical OR
or_element <- c(TRUE, FALSE) | c(FALSE, TRUE)
print(paste("Element wise Logical OR",":",or_element))
