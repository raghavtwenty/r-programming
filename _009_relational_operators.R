# Filename: _009_relational_operators.R
# Title: List of all relational operators in R
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: June 1, 2023 | Last Updated: June 1, 2024
# Language: R | Version: 4.4.0

# Get the user input
a <- as.integer(readline(prompt = "Enter the 1st number: "))
b <- as.integer(readline(prompt = "Enter the 2nd number: "))

# Equal to
eq <- a == b
print(paste(a,"Equal to",b,":",eq))

# Not equal to
neq <- a != b
print(paste(a,"Not Equal to",b,":",neq))

# Greater than
gt <- a > b
print(paste(a,"Greater than",b,":",gt))

# Less than
lt <- a < b
print(paste(a,"Less than",b,":",lt))

# Greater than or equal to
gte <- a >= b
print(paste(a,"Greater than or equal to",b,":",gte))

# Less than or equal to
lte <- a <= b
print(paste(a,"Less than or equal to",b,":",lte))
