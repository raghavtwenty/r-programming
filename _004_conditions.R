# Filename: _004_conditions.R
# Title: Conditional statements
# Author: Raghava | GitHub : @raghavtwenty
# Date Created: June 20, 2023 | Last Updated: May 27, 2024
# Language: R | Version: 4.4.0

# Operators in R
# & (ampersand) -  AND operator
# | (pipe) -  OR operator
# ==  Equal
# !=  Not equal
# >  Greater than
# <	 Less than
# >=  Greater than or equal to
# <=  Less than or equal to

current_year = 2024

# Input from the user
cat("Enter the current year: ")
user_input <- readLines("stdin",1)

# Datatype conversion
user_input <- as.integer(user_input)

# If, else if, else conditions
if (current_year == user_input){
    print("Matched.")
} else if (current_year < user_input){
    print("Current year is lesser than the input year.")
} else if (current_year > user_input){
    print("Current year is greater than the input year.")
} else {
    print(paste("Input ",user_input," is invalid."))
}
