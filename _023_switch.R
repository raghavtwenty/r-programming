# Filename: _023_switch.R
# Title: Switch statements in R
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: June 7, 2024 | Last Updated: June 7, 2024
# Language: R | Version: 4.4.0

# Function for user input
get_day_name <- function(day_number) {
    # Switch cases
    day_name <- switch(day_number,
                        "1" = "Monday",
                        "2" = "Tuesday",
                        "3" = "Wednesday",
                        "4" = "Thursday",
                        "5" = "Friday",
                        "6" = "Saturday",
                        "7" = "Sunday",
                        "Invalid day number")
    return(day_name)
}

# Ask the user for input
user_input <- as.numeric(readline(prompt = "Enter day number (1 to 7): "))

# Final Show
print(paste("Result: ", get_day_name(user_input)))