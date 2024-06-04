# Filename: _014_vectors.R
# Title: Vectors and its built in functions in R
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: June 4, 2024 | Last Updated: June 4, 2024
# Language: R | Version: 4.4.0


# Vectors
# Combine values into a vector
print("Combine values into a vector")
vec <- c(1, 2, 3, 4, 5)
print(vec)

# Generate a sequence
print("Generate a sequence")
seq_vec <- seq(from = 1, to = 10, by = 2)
print(seq_vec)

# Repeat elements of a vector
print("Repeat elements of a vector")
rep_vec <- rep(1:3, times = 2)
print(rep_vec)

# Create an empty vector of a specified mode and length
print("Create an empty vector of a specified mode and length")
empty_vec <- vector("numeric", length = 5)
print(empty_vec)

# Append values to a vector
print("Append values to a vector")
vec <- c(1, 2, 3)
new_vec <- append(vec, c(4, 5), after = 3)
print(new_vec)

# Combine vectors by rows
print("Combine vectors by rows")
vec1 <- c(1, 2, 3)
vec2 <- c(4, 5, 6)

row_combined <- rbind(vec1, vec2)
print(row_combined)

# Combine vectors by rows columns
print("Combine vectors by columns")
col_combined <- cbind(vec1, vec2)
print(col_combined)

# Remove duplicate elements
print("Remove duplicate elements")
vec <- c(1, 2, 2, 3, 4, 4, 5)
unique_vec <- unique(vec)
print(unique_vec)

# Reverse the order of elements
print("Reverse the order of elements")
vec <- c(1, 2, 3, 4, 5)
rev_vec <- rev(vec)
print(rev_vec)

# Sort elements ascending
print("Sort elements ascending")
vec <- c(5, 2, 3, 1, 4)
sorted_vec <- sort(vec)
print(sorted_vec)

# Sort elements descending
print("Sort elements descending")
sorted_vec_desc <- sort(vec, decreasing = TRUE)
print(sorted_vec_desc)

# Extract element at position
print("Extract element at position")
vec <- c(10, 20, 30, 40, 50)
print(vec[3])

# Extract a range of elements
print("Extract a range of elements")
vec <- c(10, 20, 30, 40, 50)
subset_vec <- vec[2:4]
print(subset_vec)

# Extract elements that satisfy a condition
print("Extract elements that satisfy a condition")
vec <- c(10, 20, 30, 40, 50)
filtered_vec <- vec[vec > 25]
print(filtered_vec)

# Sum of all elements
print("Sum of all elements")
vec <- c(1, 2, 3, 4, 5)
sum_vec <- sum(vec)
print(sum_vec)

# Mean of all elements
print("Mean of all elements")
vec <- c(1, 2, 3, 4, 5)
mean_vec <- mean(vec)
print(mean_vec)

# Median of all elements
print("Median of all elements")
vec <- c(1, 2, 3, 4, 5)
median_vec <- median(vec)
print(median_vec)

# Standard deviation of all elements
print("Standard deviation of all elements")
vec <- c(1, 2, 3, 4, 5)
sd_vec <- sd(vec)
print(sd_vec)

# Minimum value
print("Minimum value")
vec <- c(1, 2, 3, 4, 5)
min_vec <- min(vec)
print(min_vec)

# Maximum value
print("Maximum value")
vec <- c(1, 2, 3, 4, 5)
max_vec <- max(vec)
print(max_vec)

# Range of values (min and max)
print("Range of values (min and max)")
vec <- c(1, 2, 3, 4, 5)
range_vec <- range(vec)
print(range_vec)

# Check if all values are TRUE
print("Check if all values are TRUE")
vec <- c(TRUE, TRUE, TRUE)
all_true <- all(vec)
print(all_true)

# Check if any value is TRUE
print("Check if any value is TRUE")
vec <- c(FALSE, TRUE, FALSE)
any_true <- any(vec)
print(any_true)

# Get the number of elements in a vector
print("Get the number of elements in a vector")
vec <- c(1, 2, 3, 4, 5)
len_vec <- length(vec)
print(len_vec)

# Get or set the names of elements in a vector
print("Get or set the names of elements in a vector")
vec <- c(a = 1, b = 2, c = 3)
print(names(vec))

# Set names
print("Set names")
vec <- c(1, 2, 3)
names(vec) <- c("a", "b", "c")
print(vec)

#  Check if an object is a vector
print("Check if an object is a vector")
vec <- c(1, 2, 3)
is_vec <- is.vector(vec)
print(is_vec)

# Get indices of TRUE values in a logical vector
print("Get indices of TRUE values in a logical vector")
vec <- c(TRUE, FALSE, TRUE)
true_indices <- which(vec)
print(true_indices)

# Get the positions of matches of x in table
print("Get the positions of matches of x in table")
vec <- c("a", "b", "c")
table <- c("b", "c", "d")
matches <- match(vec, table)
print(matches)

# Check for membership
print("Check for membership")
vec <- c("a", "b", "c")
table <- c("b", "c", "d")
membership <- vec %in% table
print(membership)

# Identify duplicate elements
print("Identify duplicate elements")
vec <- c(1, 2, 2, 3, 4, 4, 5)
duplicates <- duplicated(vec)
print(duplicates)

# Check if there are any duplicates
print("Check if there are any duplicates")
vec <- c(1, 2, 2, 3, 4, 4, 5)
any_duplicates <- anyDuplicated(vec)
print(any_duplicates)

# Product of all elements
print("Product of all elements")
vec <- c(1, 2, 3, 4, 5)
prod_vec <- prod(vec)
print(prod_vec)

# Cumulative sum of elements
print("Cumulative sum of elements")
vec <- c(1, 2, 3, 4, 5)
cumsum_vec <- cumsum(vec)
print(cumsum_vec)

# Cumulative product of elements
print("Cumulative product of elements")
vec <- c(1, 2, 3, 4, 5)
cumprod_vec <- cumprod(vec)
print(cumprod_vec)

# Lagged differences
print("Lagged differences")
vec <- c(1, 2, 3, 4, 5)
diff_vec <- diff(vec)
print(diff_vec)

# Center and scale values (standardize)
print("Center and scale values (standardize)")
vec <- c(1, 2, 3, 4, 5)
scaled_vec <- scale(vec)
print(scaled_vec)

# Concatenate elements into strings
print("Concatenate elements into strings")
vec <- c("a", "b", "c")
pasted_vec <- paste(vec, collapse = "-")
print(pasted_vec)

# Concatenate elements into strings (no separator)
print("Concatenate elements into strings (no separator)")
vec <- c("a", "b", "c")
pasted_vec <- paste0(vec)
print(pasted_vec)

# Convert to lowercase
print("Convert to lowercase")
vec <- c("A", "B", "C")
lower_vec <- tolower(vec)
print(lower_vec)

# Convert to uppercase
print("Convert to uppercase")
vec <- c("a", "b", "c")
upper_vec <- toupper(vec)
print(upper_vec)

# Parallel maxima
print("Parallel maxima")
vec1 <- c(1, 4, 3)
vec2 <- c(2, 2, 5)
pmax_vec <- pmax(vec1, vec2)
print(pmax_vec)

# Index of the first maximum value
print("Index of the first maximum value")
vec <- c(1, 3, 2, 5, 4)
index_max <- which.max(vec)
print(index_max)

# Index of the first minimum value
print("Index of the first minimum value")
vec <- c(1, 3, 2, 0, 4)
index_min <- which.min(vec)
print(index_min)

# Parallel minima
print("Parallel minima")
vec1 <- c(1, 4, 3)
vec2 <- c(2, 2, 5)
pmin_vec <- pmin(vec1, vec2)
print(pmin_vec)

# Test if two objects are exactly equal
print("Test if two objects are exactly equal")
vec1 <- c(1, 2, 3)
vec2 <- c(1, 2, 3)
is_identical <- identical(vec1, vec2)
print(is_identical)

# Test if two objects are nearly equal
print("Test if two objects are nearly equal")
vec1 <- c(1, 2, 3)
vec2 <- c(1.000001, 2, 3)
is_almost_equal <- all.equal(vec1, vec2)
print(is_almost_equal)

# Convert to numeric
print("Convert to numeric")
vec <- c("1", "2", "3")
numeric_vec <- as.numeric(vec)
print(numeric_vec)

# Convert to integer
print("Convert to integer")
vec <- c(1.5, 2.5, 3.5)
integer_vec <- as.integer(vec)
print(integer_vec)

# Convert to character
print("Convert to character")
vec <- c(1, 2, 3)
char_vec <- as.character(vec)
print(char_vec)

# Convert to logical
print("Convert to logical")
vec <- c(1, 0, 1)
logical_vec <- as.logical(vec)
print(logical_vec)

# Test for missing values (NA)
print("Test for missing values (NA)")
vec <- c(1, NA, 3)
na_vec <- is.na(vec)
print(na_vec)

# Omit missing values
print("Omit missing values")
vec <- c(1, NA, 3)
no_na_vec <- na.omit(vec)
print(no_na_vec)

# Pass through missing values
print("Pass through missing values")
vec <- c(1, NA, 3)
pass_na_vec <- na.pass(vec)
print(pass_na_vec)

# Number of characters in strings
print("Number of characters in strings")
vec <- c("apple", "banana", "cherry")
char_count <- nchar(vec)
print(char_count)

# Summary statistics
print("Summary statistics")
vec <- c(1, 2, 3, 4, 5)
summary_vec <- summary(vec)
print(summary_vec)

# Quantile of the elements
print("Quantile of the elements")
vec <- c(1, 2, 3, 4, 5)
quantiles <- quantile(vec, probs = c(0.25, 0.5, 0.75))
print(quantiles)

# Round elements to the specified number of decimal places
print("Round elements to the specified number of decimal places")
vec <- c(1.123, 2.345, 3.567)
rounded_vec <- round(vec, digits = 1)
print(rounded_vec)

# Round elements up to the nearest integer
print("Round elements up to the nearest integer")
vec <- c(1.2, 2.5, 3.8)
ceiling_vec <- ceiling(vec)
print(ceiling_vec)

# Round elements down to the nearest integer
print("Round elements down to the nearest integer")
vec <- c(1.2, 2.5, 3.8)
floor_vec <- floor(vec)
print(floor_vec)

# Truncate elements to the integer part
print("Truncate elements to the integer part")
vec <- c(1.2, 2.5, 3.8)
trunc_vec <- trunc(vec)
print(trunc_vec)

# Extract the real part of complex numbers
print("Extract the real part of complex numbers")
complex_vec <- c(1+2i, 3+4i)
real_part <- Re(complex_vec)
print(real_part)

# Extract the imaginary part of complex numbers
print("Extract the imaginary part of complex numbers")
complex_vec <- c(1+2i, 3+4i)
imaginary_part <- Im(complex_vec)
print(imaginary_part)

# Get the complex conjugate
print("Get the complex conjugate")
complex_vec <- c(1+2i, 3+4i)
conjugate <- Conj(complex_vec)
print(conjugate)

# Get the modulus
print("Get the modulus")
complex_vec <- c(1+2i, 3+4i)
modulus <- Mod(complex_vec)
print(modulus)

# Return the first n elements of a vector
print("Return the first n elements of a vector")
vec <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
head_vec <- head(vec, n = 3)
print(head_vec)

# Return the last n elements of a vector
print("Return the last n elements of a vector")
vec <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
tail_vec <- tail(vec, n = 3)
print(tail_vec)

# Get the order of the elements of a vector
print("Get the order of the elements of a vector")
vec <- c(3, 1, 4, 1, 5, 9)
order_vec <- order(vec)
print(order_vec)

# Extract unique elements
print("Extract unique elements")
vec <- c(1, 2, 2, 3, 4, 4, 5)
unique_vec <- unique(vec)
print(unique_vec)

# Encode a vector as a factor
print("Encode a vector as a factor")
vec <- factor(c("apple", "banana", "apple", "cherry"))
levels_vec <- levels(vec)
print(levels_vec)
