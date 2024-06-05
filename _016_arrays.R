# Filename: _016_arrays.R
# Title: Arrays and its built in functions in R
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: June 5, 2024 | Last Updated: June 5, 2024
# Language: R | Version: 4.4.0


# Arrays
# Creating arrays
print("Creating arrays")
thisarray <- c(1:24)
multiarray <- array(thisarray, dim = c(4, 3, 2),)

# Accessing elements of an array
print("Accessing elements of an array")
print(multiarray[2, 3, 2])

# Creating an array with dimensions and names
print("Creating an array with dimensions and names")
named_array <- array(1:12, dim = c(3, 2, 2),
                     dimnames = list(c("row1", "row2", "row3"),
                                     c("col1", "col2"),
                                     c("slice1", "slice2")))
print(named_array)

# Sum over the rows (1st dimension)
print("Sum over the rows (1st dimension)")
row_sums <- apply(multiarray, 1, sum)
print(row_sums)

# Sum over the columns (2nd dimension)
print("Sum over the columns (2nd dimension)")
col_sums <- apply(multiarray, 2, sum)
print(col_sums)

# Sum over the slices (3rd dimension)
print("Sum over the slices (3rd dimension)")
slice_sums <- apply(multiarray, 3, sum)
print(slice_sums)

# Finding dimensions of the array
print("Finding dimensions of the array")
dims <- dim(multiarray)
print(dims)

# Finding the length (number of elements) of the array
print("Finding the length (number of elements) of the array")
len <- length(multiarray)
print(len)


# Finding the transpose of a 2D slice of the array
print("Finding the transpose of a 2D slice of the array")
transpose_slice <- t(multiarray[,,1])
print(transpose_slice)

# Reshaping the array (flatten to vector)
print("Reshaping the array (flatten to vector)")
flattened <- as.vector(multiarray)
print(flattened)

# Reshaping the array to a different dimension
print("Reshaping the array to a different dimension")
reshaped <- array(flattened, dim = c(2, 12))
print(reshaped)

# Replacing values in the array
print("Replacing values in the array")
multiarray[multiarray %% 2 == 0] <- 0
print(multiarray)

# Arithmetic operations on arrays
print("Arithmetic operations on arrays")
array1 <- array(1:12, dim = c(3, 2, 2))
array2 <- array(13:24, dim = c(3, 2, 2))

# Element-wise addition
print("Element-wise addition")
array_sum <- array1 + array2
print(array_sum)

# Element-wise multiplication
print("Element-wise multiplication")
array_prod <- array1 * array2
print(array_prod)

# Slicing arrays
print("Slicing arrays")
slice1 <- multiarray[,,1]
print(slice1)

# Extracting the first row across all slices
row1_all_slices <- multiarray[1,,]
print(row1_all_slices)

# Extracting the first column across all slices
col1_all_slices <- multiarray[,1,]
print(col1_all_slices)

# Checking if an object is an array
print("Checking if an object is an array")
is_array <- is.array(multiarray)
print(is_array)

# Getting the length of each dimension
print("Getting the length of each dimension")
dim_lengths <- dim(multiarray)
print(dim_lengths)

# Getting the number of dimensions
print("Getting the number of dimensions")
num_dims <- length(dim(multiarray))
print(num_dims)

# Creating an empty array
print("Creating an empty array")
empty_array <- array(NA, dim = c(4, 3, 2))
print(empty_array)

# Filling an array with a specific value
print("Filling an array with a specific value")
filled_array <- array(5, dim = c(4, 3, 2))
print(filled_array)

# Summarizing an array
print("Summarizing an array")
summary_array <- summary(multiarray)
print(summary_array)

# Checking if an object is atomic
print("Checking if an object is atomic")
is_atomic <- is.atomic(multiarray)
print(is_atomic)

# Replicating an array
print("Replicating an array")
replicated_array <- replicate(2, multiarray)
print(replicated_array)

# Sorting an array (requires conversion to vector)
print("Sorting an array")
sorted_array <- array(sort(as.vector(multiarray)), dim = dim(multiarray))
print(sorted_array)

# Finding unique elements in an array (requires conversion to vector)
print("Finding unique elements in an array")
unique_elements <- unique(as.vector(multiarray))
print(unique_elements)

# Checking for NA values
print("Checking for NA values")
has_na <- anyNA(multiarray)
print(has_na)

# Replace NA values with a specific value
print("Replace NA values with a specific value")
multiarray_with_na <- multiarray
multiarray_with_na[1, 1, 1] <- NA
na_replaced <- ifelse(is.na(multiarray_with_na), 0, multiarray_with_na)
print(na_replaced)

# Getting the mode of the array
print("Getting the mode of the array")
mode_array <- mode(multiarray)
print(mode_array)

# Converting an array to a matrix (2D only)
print("Converting an array to a matrix (2D only)")
array_to_matrix <- as.matrix(multiarray[,,1])
print(array_to_matrix)

# Generating an array of random numbers
print("Generating an array of random numbers")
random_array <- array(rnorm(24), dim = c(4, 3, 2))
print(random_array)

# Applying a function element-wise
print("Applying a function element-wise")
element_wise_function <- array(sqrt(multiarray), dim = dim(multiarray))
print(element_wise_function)

# Setting and getting dimension names
print("Setting and getting dimension names")
dimnames(multiarray) <- list(c("R1", "R2", "R3", "R4"), c("C1", "C2", "C3"), c("S1", "S2"))
dimnames_array <- dimnames(multiarray)
print(dimnames_array)

# Creating an identity matrix array
print("Creating an identity matrix array")
identity_array <- diag(4)  # Creates a 4x4 identity matrix
print(identity_array)

# Getting the names of the dimensions
print("Getting the names of the dimensions")
dimnames_array <- dimnames(multiarray)
print(dimnames_array)

# Repeating an array
print("Repeating an array")
repeated_array <- array(rep(1:6, each = 4), dim = c(4, 3, 2))
print(repeated_array)

# Combining arrays along rows
print("Combining arrays along rows")
row_combined_array <- rbind(multiarray[,,1], multiarray[,,2])
print(row_combined_array)

# Combining arrays along columns
print("Combining arrays along columns")
col_combined_array <- cbind(multiarray[,,1], multiarray[,,2])
print(col_combined_array)

# Checking if the array is numeric
print("Checking if the array is numeric")
is_numeric_array <- is.numeric(multiarray)
print(is_numeric_array)

# Checking if the array is integer
print("Checking if the array is integer")
is_integer_array <- is.integer(multiarray)
print(is_integer_array)

# Checking if the array is logical
print("Checking if the array is logical")
is_logical_array <- is.logical(multiarray)
print(is_logical_array)

# Applying a custom function using lapply (requires conversion to list)
print("Applying a custom function using lapply")
lapply_result <- lapply(as.list(multiarray), function(x) x * 2)
print(lapply_result)

# Splitting an array into a list
print("Splitting an array into a list")
split_array <- split(multiarray, f = multiarray)
print(split_array)

# Getting the row sums and column sums of 2D slices
print("Getting the row sums and column sums of 2D slices")
row_sums_slice <- rowSums(multiarray[,,1])
print(row_sums_slice)

col_sums_slice <- colSums(multiarray[,,1])
print(col_sums_slice)

# Calculating the mean across dimensions
print("Calculating the mean across dimensions")
mean_array <- apply(multiarray, c(1, 2), mean)
print(mean_array)

# Calculating the variance across dimensions
print("Calculating the variance across dimensions")
var_array <- apply(multiarray, c(1, 2), var)
print(var_array)

# Calculating the standard deviation across dimensions
print("Calculating the standard deviation across dimensions")
sd_array <- apply(multiarray, c(1, 2), sd)
print(sd_array)

# Using outer to perform outer product
print("Using outer to perform outer product")
outer_product <- outer(1:3, 1:3)
print(outer_product)

# Creating a cross-tabulation (contingency table)
print("Creating a cross-tabulation (contingency table)")
cross_tab <- table(multiarray[,,1], multiarray[,,2])
print(cross_tab)

# Creating an array
print("Creating an array")
thisarray <- c(1:24)
multiarray <- array(thisarray, dim = c(4, 3, 2))

# Getting the mode of the array
print("Getting the mode of the array")
mode_array <- mode(multiarray)
print(mode_array)

# Converting an array to a matrix (2D only)
print("Converting an array to a matrix (2D only)")
array_to_matrix <- as.matrix(multiarray[,,1])
print(array_to_matrix)

# Generating an array of random numbers
print("Generating an array of random numbers")
random_array <- array(rnorm(24), dim = c(4, 3, 2))
print(random_array)

# Applying a function element-wise
print("Applying a function element-wise")
element_wise_function <- array(sqrt(multiarray), dim = dim(multiarray))
print(element_wise_function)

# Setting and getting dimension names
print("Setting and getting dimension names")
dimnames(multiarray) <- list(c("R1", "R2", "R3", "R4"), c("C1", "C2", "C3"), c("S1", "S2"))
dimnames_array <- dimnames(multiarray)
print(dimnames_array)

# Creating an identity matrix array
print("Creating an identity matrix array")
identity_array <- diag(4)  # Creates a 4x4 identity matrix
print(identity_array)

# Getting the names of the dimensions
print("Getting the names of the dimensions")
dimnames_array <- dimnames(multiarray)
print(dimnames_array)

# Repeating an array
print("Repeating an array")
repeated_array <- array(rep(1:6, each = 4), dim = c(4, 3, 2))
print(repeated_array)

# Combining arrays along rows
print("Combining arrays along rows")
row_combined_array <- rbind(multiarray[,,1], multiarray[,,2])
print(row_combined_array)

# Combining arrays along columns
print("Combining arrays along columns")
col_combined_array <- cbind(multiarray[,,1], multiarray[,,2])
print(col_combined_array)

# Checking if the array is numeric
print("Checking if the array is numeric")
is_numeric_array <- is.numeric(multiarray)
print(is_numeric_array)

# Checking if the array is integer
print("Checking if the array is integer")
is_integer_array <- is.integer(multiarray)
print(is_integer_array)

# Checking if the array is logical
print("Checking if the array is logical")
is_logical_array <- is.logical(multiarray)
print(is_logical_array)

# Applying a custom function using lapply (requires conversion to list)
print("Applying a custom function using lapply")
lapply_result <- lapply(as.list(multiarray), function(x) x * 2)
print(lapply_result)

# Splitting an array into a list
print("Splitting an array into a list")
split_array <- split(multiarray, f = multiarray)
print(split_array)

# Getting the row sums and column sums of 2D slices
print("Getting the row sums and column sums of 2D slices")
row_sums_slice <- rowSums(multiarray[,,1])
print(row_sums_slice)

col_sums_slice <- colSums(multiarray[,,1])
print(col_sums_slice)

# Calculating the mean across dimensions
print("Calculating the mean across dimensions")
mean_array <- apply(multiarray, c(1, 2), mean)
print(mean_array)

# Calculating the variance across dimensions
print("Calculating the variance across dimensions")
var_array <- apply(multiarray, c(1, 2), var)
print(var_array)

# Calculating the standard deviation across dimensions
print("Calculating the standard deviation across dimensions")
sd_array <- apply(multiarray, c(1, 2), sd)
print(sd_array)

# Using outer to perform outer product
print("Using outer to perform outer product")
outer_product <- outer(1:3, 1:3)
print(outer_product)

# Creating a cross-tabulation (contingency table)
print("Creating a cross-tabulation (contingency table)")
cross_tab <- table(multiarray[,,1], multiarray[,,2])
print(cross_tab)
