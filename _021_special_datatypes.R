# Filename: _021_special_datatypes.R
# Title: Special data types in R
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: June 6, 2024 | Last Updated: June 6, 2024
# Language: R | Version: 4.4.0


# Special Data types
# The absence of a value or an undefined value.
print("The absence of a value or an undefined value.")
x <- NULL
print(x)

# A missing value.
print("A missing value.")
x <- NA
print(x)

# "Not a Number," used to indicate an undefined or un representable value.
print("\"Not a Number,\" used to indicate an undefined or un representable value.")
x <- NaN
print(x)

# Positive and negative infinity.
print("Positive and negative infinity.")
x <- Inf
y <- -Inf
print(x)
print(y)

# Names or identifiers.
print("Names or identifiers.")
sym <- as.symbol("x")
print(sym)

# R environments variables.
print("R environments variables.")
env <- new.env()
env$a <- "Hello"
print(env$a)

# One-liners
print("On-liners")
f <- function(x) { x * 2 }
print(f(2))

# Unevaluated R expressions.
print("Unevaluated R expressions.")
expr <- expression(x + 1)
print(expr)

# Parsed but unevaluated R code.
print("Parsed but unevaluated R code.")
lang <- quote(x + 1)
print(lang)
