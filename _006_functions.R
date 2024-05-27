# Filename: _006_functions.R
# Title: User defined functions in R
# Author: Raghava | GitHub : @raghavtwenty
# Date Created: June 20, 2023 | Last Updated: May 27, 2024
# Language: R | Version: 4.4.0

# Function
greet <- function(name, age){
    # Find the length of the name
    nchar(name) -> len

    # Show
    cat("Hi, ")
    cat(name," you are ",age," years old.\n")
    print(paste("Number of characters in your name: ",len))
    cat("You are Incredible!")
}

# Input from the user
cat("Enter your name: ")
name <- readLines("stdin",1)
cat("Enter your age: ")
readLines("stdin",1) -> age

# Call the function and pass the arguments
greet(name,age)

# Anonymous function with lapply
numbers <- list(1, 2, 3, 4, 5)
squared_numbers <- lapply(numbers, function(x) x^2)
print(unlist(squared_numbers))      # Single line output
# print(squared_numbers)     # Multi-line output