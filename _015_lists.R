# Filename: _015_lists.R
# Title: Lists and its built in functions in R
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: June 4, 2024 | Last Updated: June 4, 2024
# Language: R | Version: 4.4.0


# Lists
# Create a list
print("Create a list")
list_var <- list(1, "a", TRUE)
print(list_var)

# Access elements by index
print("Access elements by index")
list_var <- list(1, "a", TRUE)
element <- list_var[[2]]
print(element)

# Access elements by name
print("Access elements by name")
list_var <- list(num = 1, char = "a", logical = TRUE)
element <- list_var[["char"]]
print(element)

# Add elements to a list
print("Add elements to a list")
list_var <- list(1, "a", TRUE)
list_var[[4]] <- 4
print(list_var)

# Remove elements from a list
print("Remove elements from a list")
list_var <- list(1, "a", TRUE)
list_var[[2]] <- NULL
print(list_var)

# Check if an element exists in a list
print("Check if an element exists in a list")
list_var <- list(1, "a", TRUE)
exists <- "a" %in% list_var
print(exists)

# Combine multiple lists
print("Combine multiple lists")
list1 <- list(1, 2, 3)
list2 <- list("a", "b", "c")
combined_list <- c(list1, list2)
print(combined_list)

# Extract sublist
print("Extract sublist")
list_var <- list(1, "a", TRUE, 4, "b")
sublist <- list_var[2:4]
print(sublist)

# Check if a list is empty
print("Check if a list is empty")
empty_list <- list()
is_empty <- length(empty_list) == 0
print(is_empty)

# Length of a list
print("Length of a list")
list_var <- list(1, "a", TRUE)
length_list <- length(list_var)
print(length_list)

# List names
print("List names")
list_var <- list(num = 1, char = "a", logical = TRUE)
names_list <- names(list_var)
print(names_list)

# Remove list names
print("Remove list names")
list_var <- list(num = 1, char = "a", logical = TRUE)
unname_list <- unname(list_var)
print(unname_list)

# Reverse a list
print("Reverse a list")
list_var <- list(1, "a", TRUE)
reversed_list <- rev(list_var)
print(reversed_list)

# Duplicate a list
print("Duplicate a list")
list_var <- list(1, "a", TRUE)
duplicate_list <- list_var
print(duplicate_list)

# Check if two lists are identical
print("Check if two lists are identical")
list1 <- list(1, "a", TRUE)
list2 <- list(1, "a", TRUE)
is_identical <- identical(list1, list2)
print(is_identical)

# Merge lists
print("Merge lists")
list1 <- list(a = 1, b = 2)
list2 <- list(b = 3, c = 4)
merged_list <- c(list1, list2)
print(merged_list)

# Sort a list
print("Sort a list")
list_var <- list(3, 1, 2)
sorted_list <- sort(list_var)
print(sorted_list)

# Apply a function to each element of a list
print("Apply a function to each element of a list")
list_var <- list(1, 2, 3)
squared_list <- lapply(list_var, function(x) x^2)
print(squared_list)

# Convert a list to a vector
print("Convert a list to a vector")
list_var <- list(1, 2, 3)
vector_var <- unlist(list_var)
print(vector_var)

# Check if a list is atomic
print("Check if a list is atomic")
atomic_list <- list(1, "a", TRUE)
is_atomic <- is.atomic(atomic_list)
print(is_atomic)

# Check if a list is a list
print("Check if a list is a list")
list_var <- list(1, "a", TRUE)
is_list <- is.list(list_var)
print(is_list)

# Convert a vector to a list
print("Convert a vector to a list")
vector_var <- c(1, 2, 3)
list_var <- as.list(vector_var)
print(list_var)

# Apply a function to pairs of elements from two lists
print("Apply a function to pairs of elements from two lists")
list1 <- list(1, 2, 3)
list2 <- list(4, 5, 6)
sum_list <- mapply(function(x, y) x + y, list1, list2)
print(sum_list)

# Convert a list to a data frame
print("Convert a list to a data frame")
list_var <- list(name = c("Alice", "Bob", "Charlie"), age = c(30, 40, 50))
data_frame <- as.data.frame(list_var)
print(data_frame)

# Check if a list contains a specific element
print("Check if a list contains a specific element")
list_var <- list(1, "a", TRUE)
contains <- any(list_var == "a")
print(contains)

# Check if all elements of a list satisfy a condition
print("Check if all elements of a list satisfy a condition")
list_var <- list(1, 2, 3, 4, 5)
all_positive <- all(sapply(list_var, function(x) x > 0))
print(all_positive)

# Filter elements of a list based on a condition
print("Filter elements of a list based on a condition")
list_var <- list(1, 2, 3, 4, 5)
filtered_list <- list_var[sapply(list_var, function(x) x %% 2 == 0)]
print(filtered_list)

# Split a list into smaller lists
print("Split a list into smaller lists")
list_var <- list(1, 2, 3, 4, 5)
split_list <- split(list_var, rep(1:2, each = 2))
print(split_list)

# Sort a list based on element values
print("Sort a list based on element values")
list_var <- list(3, 1, 2)
sorted_list <- list_var[order(unlist(list_var))]
print(sorted_list)

# Flatten a nested list
print("Flatten a nested list")
list_var <- list(1, list(2, 3), 4, list(5, 6, 7))
flatten_list <- unlist(list_var, recursive = FALSE)
print(flatten_list)

# Extract unique elements from a list
print("Extract unique elements from a list")
list_var <- list(1, "a", TRUE, 1, "a")
unique_elements <- unique(list_var)
print(unique_elements)

# Convert a list to a matrix
print("Convert a list to a matrix")
list_var <- list(c(1, 2, 3), c(4, 5, 6), c(7, 8, 9))
matrix_var <- do.call(rbind, list_var)
print(matrix_var)

# Convert a list to a named vector
print("Convert a list to a named vector")
list_var <- list(a = 1, b = 2, c = 3)
vector_var <- as.vector(list_var)
print(vector_var)

# Flatten a list into a single vector
print("Flatten a list into a single vector")
list_var <- list(1, list(2, 3), 4, list(5, 6, 7))
flattened_vector <- unlist(list_var)
print(flattened_vector)

# Combine lists into a named list
print("Combine lists into a named list")
list1 <- list(a = 1, b = 2)
list2 <- list(c = 3, d = 4)
combined_list <- c(list1, list2)
print(combined_list)

# Extract elements from a list using a logical index
print("Extract elements from a list using a logical index")
list_var <- list(1, "a", TRUE, 4, "b")
logical_index <- c(FALSE, TRUE, TRUE, FALSE, TRUE)
selected_elements <- list_var[logical_index]
print(selected_elements)

# Apply a function to elements of a list and simplify the result
print("Apply a function to elements of a list and simplify the result")
list_var <- list(1, 2, 3)
squared_sum <- sum(sapply(list_var, function(x) x^2))
print(squared_sum)

# Combine elements of a list into a single string
print("Combine elements of a list into a single string")
list_var <- list("hello", "world", "!")
combined_string <- paste(list_var, collapse = " ")
print(combined_string)

# Apply a function to elements of a list and return a list
print("Apply a function to elements of a list and return a list")
list_var <- list(1, 2, 3)
squared_list <- lapply(list_var, function(x) x^2)
print(squared_list)

# Check if a list contains only unique elements
print("Check if a list contains only unique elements")
list_var <- list(1, 2, 3, 4, 5)
is_unique <- length(unique(list_var)) == length(list_var)
print(is_unique)

# Check if a list is named
print("Check if a list is named")
list_var <- list(a = 1, b = 2, c = 3)
is_named <- !is.null(names(list_var))
print(is_named)

# Merge lists by combining corresponding elements
print("Merge lists by combining corresponding elements")
list1 <- list(1, 2, 3)
list2 <- list(4, 5, 6)
merged_list <- mapply(c, list1, list2)
print(merged_list)

# Check if all elements of a list are of the same type
print("Check if all elements of a list are of the same type")
list_var <- list(1, "a", TRUE)
is_same_type <- length(unique(sapply(list_var, typeof))) == 1
print(is_same_type)

# Filter elements of a list based on a logical condition
print("Filter elements of a list based on a logical condition")
list_var <- list(1, 2, 3, 4, 5)
filtered_list <- list_var[sapply(list_var, function(x) x %% 2 == 0)]
print(filtered_list)

# Check if a list contains duplicate elements
print("Check if a list contains duplicate elements")
list_var <- list(1, 2, 3, 4, 5, 2)
has_duplicates <- length(list_var) != length(unique(list_var))
print(has_duplicates)

# Check if all elements of a list are numeric
print("Check if all elements of a list are numeric")
list_var <- list(1, 2, 3, 4, 5)
are_numeric <- all(sapply(list_var, is.numeric))
print(are_numeric)

# Combine lists by alternating elements
print("Combine lists by alternating elements")
list1 <- list(1, 2, 3)
list2 <- list("a", "b", "c")
combined_list <- c(rbind(list1, list2))
print(combined_list)
