# Filename: _018_dataframes.R
# Title: Data frames and its built-in functions in R
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: June 5, 2024 | Last Updated: June 5, 2024
# Language: R | Version: 4.4.0


# Data Frames
# Create a data frame
print("Create a data frame")
df <- data.frame(Name = c("John", "Doe", "Jane"),
                 Age = c(25, 30, 28),
                 Sex = c("Male", "Male", "Female"),
                 Height = c(170, 180, 165),
                 stringsAsFactors = FALSE)
print(df)

# Accessing column names
print("Accessing column names")
column_names <- colnames(df)
print(column_names)

# Accessing row names
print("Accessing row names")
row_names <- rownames(df)
print(row_names)

# Accessing dimensions
print("Accessing dimensions")
dimensions <- dim(df)
print(dimensions)

# Accessing structure
print("Accessing structure")
structure_info <- str(df)
print(structure_info)

# Accessing summary statistics
print("Accessing summary statistics")
summary_stats <- summary(df)
print(summary_stats)

# Accessing the first few rows
print("Accessing the first few rows")
head_rows <- head(df)
print(head_rows)

# Accessing the last few rows
print("Accessing the last few rows")
tail_rows <- tail(df)
print(tail_rows)

# Accessing subsets of data
print("Accessing subsets of data")
subset_data <- df[df$Age > 25, ]
print(subset_data)

# Adding new columns
print("Adding new columns")
df$Weight <- c(70, 80, 60)
print(df)

# Removing columns
print("Removing columns")
df <- df[, -c(2, 3)]
print(df)

# Renaming columns
print("Renaming columns")
colnames(df) <- c("FullName", "Years")
print(df)

# Converting data frame to matrix
print("Converting data frame to matrix")
mat <- as.matrix(df)
print(mat)

# Sorting data frame by rows
print("Sorting data frame by rows")
sorted_df <- df[order(row.names(df)), ]
print(sorted_df)

# Merging data frames by common columns
print("Merging data frames by common columns")
df1 <- data.frame(ID = c(1, 2, 3), Score = c(90, 85, 95))
df2 <- data.frame(ID = c(2, 3, 4), Grade = c("A", "B", "C"))
merged_df <- merge(df1, df2, by = "ID")
print(merged_df)

# Merging data frames by common rows
print("Merging data frames by common rows")
merged_df <- merge(df1, df2, by = 0)
print(merged_df)

# Checking for missing values
print("Checking for missing values")
missing_values <- is.na(df)
print(missing_values)

# Removing missing values
print("Removing missing values")
clean_df <- na.omit(df)
print(clean_df)

# Transposing data frame
print("Transposing data frame")
transposed_df <- t(df)
print(transposed_df)

# Check if object is a data frame
print("Check if object is a data frame")
is_dataframe <- is.data.frame(df)
print(is_dataframe)

# Get the number of rows
print("Get the number of rows")
num_rows <- nrow(df)
print(num_rows)

# Get the number of columns
print("Get the number of columns")
num_cols <- ncol(df)
print(num_cols)

# Get the number of elements
print("Get the number of elements")
num_elements <- length(df)
print(num_elements)

# Get the column classes
print("Get the column classes")
column_classes <- sapply(df, class)
print(column_classes)

# Get the column data types
print("Get the column data types")
column_types <- sapply(df, typeof)
print(column_types)

# Get unique values in a column
print("Get unique values in a column")
unique_values <- unique(df$FullName)
print(unique_values)

# Count the frequency of unique values in a column
print("Count the frequency of unique values in a column")
value_counts <- table(df$FullName)
print(value_counts)

# Rename rows
print("Rename rows")
rownames(df) <- c("Row1", "Row2", "Row3")
print(df)

# Rename columns
print("Rename columns")
colnames(df) <- c("FullName", "Years")
print(df)

# Add row names as a column
print("Add row names as a column")
df$RowNames <- row.names(df)
print(df)

# Add column names as a row
print("Add column names as a row")
df <- rbind(colnames(df), df)
print(df)

# Drop rows with missing values
print("Drop rows with missing values")
df <- df[complete.cases(df), ]
print(df)

# Drop columns with missing values
print("Drop columns with missing values")
df <- df[, colSums(is.na(df)) == 0]
print(df)

# Convert factors to character
print("Convert factors to character")
df <- data.frame(lapply(df, as.character), stringsAsFactors = FALSE)
print(df)

# Convert data frame to list
print("Convert data frame to list")
df_list <- as.list(df)
print(df_list)

# Convert data frame to JSON
# print("Convert data frame to JSON")
# library(jsonlite)
# df_json <- toJSON(df)
# print(df_json)

# Convert data frame to CSV
# print("Convert data frame to CSV")
# write.csv(df, "df.csv", row.names = FALSE)

# Convert data frame to Excel
# print("Convert data frame to Excel")
# library(openxlsx)
# write.xlsx(df, "df.xlsx")