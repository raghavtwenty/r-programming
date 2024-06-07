# Filename: _022_nested_if.R
# Title: Nested if else in R
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: June 7, 2024 | Last Updated: June 7, 2024
# Language: R | Version: 4.4.0

# Function using nested if else
categorize_number <- function(x) {
    # Base if condition
    if (x >= 0) {
        # Nested if condition
        if (x >= 100) {
            category <- "Positive and Large"
        } else {
            category <- "Positive and Small"
        }
    # Outside nested if
    } else {
        category <- "Negative"
    }
    return(category)
}

# Ask the user for input
user_input <- as.numeric(readline(prompt = "Enter a number: "))

# Categorize the user input
category <- categorize_number(user_input)

# Final Show
print(paste("Result: ", category))
