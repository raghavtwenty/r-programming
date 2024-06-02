# Filename: _007_user_input.R
# Title: Different ways to get user input in R
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: June 1, 2024 | Last Updated: June 1, 2024
# Language: R | Version: 4.4.0

# Command line arguments
# user_input <- commandArgs(trailingOnly = TRUE)
# cat("You entered:", user_input, "\n")

# Readline - Returns the input as a character string
user_input <- readline(prompt = "Enter your name: ")
cat("You entered: ", user_input, "\n")

# Readlines - Returns a character vector
cat("Enter multiple lines of text: ")
user_input <- readLines("stdin", 2)     # Specify no. of lines
cat("You entered: ", user_input, "\n")

# Scan - Handles various data types
cat("Enter numbers separated by spaces: ")
user_input <- scan(what = numeric())
cat("You entered: ", user_input, "\n")

# Menu - list of choices and get their selection
choices <- c("Choice A", "Choice B", "Choice C")
user_input <- menu(choices, title = "Choose an option: ")
cat("You have chosen: ", choices[user_input], "\n")

# Select - Similar to menu, used in GUI
selection <- c("Selection A", "Selection B", "Selection C")
user_input <- select.list(selection, title = "Select an option: ")
cat("You have selected: ", user_input, "\n")

# Interactive - Get user input interactively
# user_input <- interactive("Enter your name: \n")
# cat("You entered: ", user_input, "\n")
