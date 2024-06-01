# Filename: _008_arithmetic_operators
# Title: List of all arithmetic operators in R
# Author: Raghava | GitHub : @raghavtwenty
# Date Created: July 1, 2023 | Last Updated: July 1, 2024
# Language: R | Version: 4.4.0

# Get the user input
a <- as.integer(readline(prompt = "Enter the 1st number: "))
b <- as.integer(readline(prompt = "Enter the 2nd number: "))

# Addition
add <- a + b
print(paste("Addition of",a,"+",b,"=",add))

# Subtraction
sub <- a - b
print(paste("Subtraction of",a,"-",b,"=",sub))

# Multiplication
mul <- a * b
print(paste("Multiplication of",a,"*",b,"=",mul))

# Division
div <- a / b
print(paste("Division of",a,"/",b,"=",div))

# Integer Division
int_div <- a %/% b
print(paste("Integer Division of",a,"and",b,"=",int_div))

# Exponentiation
exp <- a ^ b
print(paste("Exponent of",a,"^",b,"=",exp))

# Modulus
mod <- a %% b
print(paste("Modulus of",a,"%%",b,"=",mod))
