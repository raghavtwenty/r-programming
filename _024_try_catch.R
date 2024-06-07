# Filename: _024_try_catch.R
# Title:  Try catch in R
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: June 7, 2024 | Last Updated: June 7, 2024
# Language: R | Version: 4.4.0

# Division function
divide <- function(x, y) {
    return(x / y)
}

# Using tryCatch
result <- tryCatch({

    # Division by zero
    divide(10, 0)

    # Handle warnings
    }, warning = function(w) {
    print(paste("Warning: ", w))

    # Handles run time errors
    }, error = function(e) {
    print("Error: ", e)

    # Return a default value in case of an error
    return(NA)
    }, finally = {
    print("Execution completed.")
    }
)

# Final Show
print(paste("Result: ", result))
