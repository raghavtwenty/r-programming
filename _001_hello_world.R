# Filename: _001_hello_world.R
# Title: hello world, Variables & Data types
# Author: Raghava | GitHub : @raghavtwenty
# Date Created: June 20, 2023 | Last Updated: May 24, 2024
# Language: R | Version: 4.4.0

# - Comment

# Correct variable names
.myvariable <- "Content"
myVariable <- "Content"
myvariable <- "Content"
my_variable <- "Content"
MYVARIABLE <- "Content"
myvariable2 <- "Content"

# Display message
print("Hello world")    # Double quotes
print('Hi')   # Single quotes
cat("Bye")    # No line break

a <- "Good"
b <- "bye"
print(paste(a,b))   # Join & print

# Data types
x <- "Hi"    # String
print(x)

y <- 100    # Integer
print(y)

z <- 1.1    # Float
print(z)

b = TRUE    # Boolean
print(b)

c = 5+5i    # Complex
print(c)
