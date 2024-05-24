# Filename: _003_accessing.R
# Title: Accessing value from data structures
# Author: Raghava | GitHub : @raghavtwenty
# Date Created: June 20, 2023 | Last Updated: May 24, 2024
# Language: R | Version: 4.4.0

# Vector
my_vector <- c(10, 20, 30, 40, 50)

print(my_vector[1])        # In R index starts from 1
print(my_vector[c(1,3)])


# List
my_list <- list(
  name = "Raghav",
  age = 20,
  scores = c(91, 95)
)

# Access by name
print(my_list$name)

# Access by index
print(my_list[[2]])

# Access nested elements
print(my_list$scores[1])

# Data Frames
my_df <- data.frame(
    string = c("Hello", "Good"),
    length = c(5,4),
    starting_letter = c("H", "G")
)

# Access by column name using $
print(my_df$string)

# Access by column name using double square brackets
print(my_df[["length"]])

# Access by column index
print(my_df[, 1])   # First column
print(my_df[, "length"])  # Column named "length"

# Access the first row
print(my_df[1, ])

# Access multiple rows
print(my_df[1:2, ])

# Access specific cells
print(my_df[1, 2])  # First row, second column
print(my_df[2, "starting_letter"])  # Second row, column "starting_letter"

# Dates and Times
today <- Sys.Date()

# Get the year, month, and day from a date
year <- format(today, "%Y")
month <- format(today, "%m")
day <- format(today, "%d")

print(paste("Year:", year, "Month:", month, "Day:", day))

# Format the date in different ways
formatted_date <- format(today, "%B %d, %Y")
print(formatted_date)
