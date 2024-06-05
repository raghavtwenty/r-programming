# Filename: _017_matrices.R
# Title: Matrices and its built in functions in R
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: June 5, 2024 | Last Updated: June 5, 2024
# Language: R | Version: 4.4.0


# Matrices
# Create a matrix
print("Create a matrix")
thismatrix <- matrix(c(1,2,3,4,5,6), nrow = 3, ncol = 2)
print(thismatrix)

# Transpose a matrix
print("Transpose a matrix")
transposed_matrix <- t(thismatrix)
print(transposed_matrix)

# Create a diagonal matrix
print("Create a diagonal matrix")
diag_matrix <- diag(c(1, 2, 3))
print(diag_matrix)

# Extract the diagonal of a matrix
print("Extract the diagonal of a matrix")
diagonal_elements <- diag(thismatrix)
print(diagonal_elements)

# Combine matrices by rows
print("Combine matrices by rows")
matrix1 <- matrix(1:6, nrow = 2, ncol = 3)
matrix2 <- matrix(7:12, nrow = 2, ncol = 3)
combined_by_row <- rbind(matrix1, matrix2)
print(combined_by_row)

# Combine matrices by columns
print("Combine matrices by columns")
combined_by_col <- cbind(matrix1, matrix2)
print(combined_by_col)

# Matrix multiplication
print("Matrix multiplication")
matrix3 <- matrix(1:4, nrow = 2)
matrix4 <- matrix(5:8, nrow = 2)
multiplied_matrix <- matrix3 %*% matrix4
print(multiplied_matrix)

# Element-wise multiplication
print("Element-wise multiplication")
elementwise_multiplied <- matrix3 * matrix4
print(elementwise_multiplied)

# Calculate row sums
print("Calculate row sums")
row_sums <- rowSums(thismatrix)
print(row_sums)

# Calculate column sums
print("Calculate column sums")
col_sums <- colSums(thismatrix)
print(col_sums)

# Calculate row means
print("Calculate row means")
row_means <- rowMeans(thismatrix)
print(row_means)

# Calculate column means
print("Calculate column means")
col_means <- colMeans(thismatrix)
print(col_means)

# Solve a system of linear equations
print("Solve a system of linear equations")
A <- matrix(c(3, 1, 2, 4), nrow = 2)
b <- c(5, 6)
solution <- solve(A, b)
print(solution)

# Calculate the determinant of a matrix
print("Calculate the determinant of a matrix")
determinant <- det(A)
print(determinant)

# Calculate the inverse of a matrix
print("Calculate the inverse of a matrix")
inverse_matrix <- solve(A)
print(inverse_matrix)

# Compute the eigenvalues and eigenvectors of a matrix
print("Compute the eigenvalues and eigenvectors of a matrix")
eigen_decomposition <- eigen(A)
print(eigen_decomposition$values)   # Eigenvalues
print(eigen_decomposition$vectors)  # Eigenvectors

# Calculate the cross product of two matrices
print("Calculate the cross product of two matrices")
cross_product <- crossprod(matrix3, matrix4)
print(cross_product)

# Calculate the outer product of two vectors
print("Calculate the outer product of two vectors")
vector1 <- c(1, 2, 3)
vector2 <- c(4, 5, 6)
outer_product <- outer(vector1, vector2)
print(outer_product)

# Perform singular value decomposition
print("Perform singular value decomposition")
svd_decomposition <- svd(matrix3)
print(svd_decomposition$u)  # U matrix
print(svd_decomposition$d)  # D matrix
print(svd_decomposition$v)  # V matrix

# Flatten a matrix to a vector
print("Flatten a matrix to a vector")
flattened_matrix <- as.vector(thismatrix)
print(flattened_matrix)

# Reshape a vector to a matrix
print("Reshape a vector to a matrix")
reshaped_matrix <- matrix(flattened_matrix, nrow = 2, ncol = 3)
print(reshaped_matrix)

# Calculate the trace of a matrix
print("Calculate the trace of a matrix")
trace_matrix <- sum(diag(thismatrix))
print(trace_matrix)

# Apply a function to each element of a matrix
print("Apply a function to each element of a matrix")
applied_matrix <- apply(thismatrix, 2, function(x) x^2)
print(applied_matrix)

# Check if an object is a matrix
print("Check if an object is a matrix")
is_matrix <- is.matrix(thismatrix)
print(is_matrix)

# Getting the dimensions of a matrix
print("Getting the dimensions of a matrix")
dimensions <- dim(thismatrix)
print(dimensions)

# Getting the number of rows of a matrix
print("Getting the number of rows of a matrix")
num_rows <- nrow(thismatrix)
print(num_rows)

# Getting the number of columns of a matrix
print("Getting the number of columns of a matrix")
num_cols <- ncol(thismatrix)
print(num_cols)

# Assigning names to the rows and columns of a matrix
print("Assigning names to the rows and columns of a matrix")
rownames(thismatrix) <- c("Row1", "Row2", "Row3")
colnames(thismatrix) <- c("Col1", "Col2")
print(thismatrix)

# Getting the row names of a matrix
print("Getting the row names of a matrix")
row_names <- rownames(thismatrix)
print(row_names)

# Getting the column names of a matrix
print("Getting the column names of a matrix")
col_names <- colnames(thismatrix)
print(col_names)

# Removing row names and column names
print("Removing row names and column names")
rownames(thismatrix) <- NULL
colnames(thismatrix) <- NULL
print(thismatrix)

# Splitting a matrix into a list of vectors
print("Splitting a matrix into a list of vectors")
split_matrix <- split(thismatrix, f = col(thismatrix))
print(split_matrix)

# Joining matrices by columns (column-wise concatenation)
print("Joining matrices by columns (column-wise concatenation)")
joined_by_cols <- cbind(matrix1, matrix2)
print(joined_by_cols)

# Joining matrices by rows (row-wise concatenation)
print("Joining matrices by rows (row-wise concatenation)")
joined_by_rows <- rbind(matrix1, matrix2)
print(joined_by_rows)

# Calculate the cumulative sum of a matrix
print("Calculate the cumulative sum of a matrix")
cumulative_sum <- apply(thismatrix, 2, cumsum)
print(cumulative_sum)

# Calculate the cumulative product of a matrix
print("Calculate the cumulative product of a matrix")
cumulative_product <- apply(thismatrix, 2, cumprod)
print(cumulative_product)

# Calculate the cumulative minimum of a matrix
print("Calculate the cumulative minimum of a matrix")
cumulative_min <- apply(thismatrix, 2, cummin)
print(cumulative_min)

# Calculate the cumulative maximum of a matrix
print("Calculate the cumulative maximum of a matrix")
cumulative_max <- apply(thismatrix, 2, cummax)
print(cumulative_max)

# Extracting a submatrix
print("Extracting a submatrix")
submatrix <- thismatrix[1:2, 1]
print(submatrix)

# Replacing values in a matrix
print("Replacing values in a matrix")
thismatrix[thismatrix %% 2 == 0] <- 0
print(thismatrix)

# Extracting a submatrix
print("Extracting a submatrix")
submatrix <- thismatrix[1:2, 1]
print(submatrix)

# Replacing values in a matrix
print("Replacing values in a matrix")
thismatrix[thismatrix %% 2 == 0] <- 0
print(thismatrix)

# Adding a scalar to a matrix
print("Adding a scalar to a matrix")
added_scalar <- thismatrix + 2
print(added_scalar)

# Subtracting a scalar from a matrix
print("Subtracting a scalar from a matrix")
subtracted_scalar <- thismatrix - 2
print(subtracted_scalar)

# Multiplying a matrix by a scalar
print("Multiplying a matrix by a scalar")
multiplied_scalar <- thismatrix * 2
print(multiplied_scalar)

# Dividing a matrix by a scalar
print("Dividing a matrix by a scalar")
divided_scalar <- thismatrix / 2
print(divided_scalar)

# Taking the modulus of a matrix
print("Taking the modulus of a matrix")
modulus_matrix <- thismatrix %% 2
print(modulus_matrix)

# Raising a matrix to a power
print("Raising a matrix to a power")
power_matrix <- thismatrix^2
print(power_matrix)

# Logical comparison of matrices (element-wise)
print("Logical comparison of matrices (element-wise)")
comparison_matrix <- thismatrix > 2
print(comparison_matrix)

# Logical AND operation (element-wise)
print("Logical AND operation (element-wise)")
logical_and_matrix <- thismatrix & matrix(c(TRUE, FALSE, TRUE, FALSE, TRUE, FALSE), nrow = 3, ncol = 2)
print(logical_and_matrix)

# Logical OR operation (element-wise)
print("Logical OR operation (element-wise)")
logical_or_matrix <- thismatrix | matrix(c(TRUE, FALSE, TRUE, FALSE, TRUE, FALSE), nrow = 3, ncol = 2)
print(logical_or_matrix)

# Calculating the absolute values of a matrix
print("Calculating the absolute values of a matrix")
absolute_matrix <- abs(thismatrix)
print(absolute_matrix)

# Rounding the values in a matrix
print("Rounding the values in a matrix")
rounded_matrix <- round(matrix(c(1.1, 2.5, 3.8, 4.2, 5.7, 6.6), nrow = 3, ncol = 2))
print(rounded_matrix)

# Calculating the floor of the values in a matrix
print("Calculating the floor of the values in a matrix")
floor_matrix <- floor(matrix(c(1.1, 2.5, 3.8, 4.2, 5.7, 6.6), nrow = 3, ncol = 2))
print(floor_matrix)

# Calculating the ceiling of the values in a matrix
print("Calculating the ceiling of the values in a matrix")
ceiling_matrix <- ceiling(matrix(c(1.1, 2.5, 3.8, 4.2, 5.7, 6.6), nrow = 3, ncol = 2))
print(ceiling_matrix)

# Generating a sequence of numbers as a matrix
print("Generating a sequence of numbers as a matrix")
sequence_matrix <- matrix(seq(1, 12, by = 2), nrow = 2, ncol = 3)
print(sequence_matrix)

# Replicating elements to form a matrix
print("Replicating elements to form a matrix")
replicated_matrix <- matrix(rep(1:3, each = 4), nrow = 4, ncol = 3)
print(replicated_matrix)

# Calculating the sum of all elements in a matrix
print("Calculating the sum of all elements in a matrix")
sum_all_elements <- sum(thismatrix)
print(sum_all_elements)

# Calculating the product of all elements in a matrix
print("Calculating the product of all elements in a matrix")
product_all_elements <- prod(thismatrix)
print(product_all_elements)

# Generating an identity matrix
print("Generating an identity matrix")
identity_matrix <- diag(3)
print(identity_matrix)

# Extracting a subset of rows
print("Extracting a subset of rows")
subset_rows <- thismatrix[1:2, ]
print(subset_rows)

# Extracting a subset of columns
print("Extracting a subset of columns")
subset_cols <- thismatrix[, 1:2]
print(subset_cols)

# Setting all elements of a matrix to a specific value
print("Setting all elements of a matrix to a specific value")
thismatrix[,] <- 5
print(thismatrix)

# Applying a function to each element of a matrix using lapply
print("Applying a function to each element of a matrix using lapply")
lapply_matrix <- lapply(thismatrix, function(x) x^2)
print(lapply_matrix)

# Applying a function to rows or columns of a matrix using sapply
print("Applying a function to rows or columns of a matrix using sapply")
sapply_matrix <- sapply(thismatrix, function(x) x^2)
print(sapply_matrix)

# Getting a summary of the matrix
print("Getting a summary of the matrix")
summary_matrix <- summary(thismatrix)
print(summary_matrix)

# Getting the structure of the matrix
print("Getting the structure of the matrix")
str_matrix <- str(thismatrix)
print(str_matrix)

# Calculating the mean of the entire matrix
print("Calculating the mean of the entire matrix")
mean_matrix <- mean(thismatrix)
print(mean_matrix)

# Calculating the variance of the entire matrix
print("Calculating the variance of the entire matrix")
variance_matrix <- var(thismatrix)
print(variance_matrix)

# Calculating the standard deviation of the entire matrix
print("Calculating the standard deviation of the entire matrix")
sd_matrix <- sd(thismatrix)
print(sd_matrix)

# Calculating the minimum value in the matrix
print("Calculating the minimum value in the matrix")
min_matrix <- min(thismatrix)
print(min_matrix)

# Calculating the maximum value in the matrix
print("Calculating the maximum value in the matrix")
max_matrix <- max(thismatrix)
print(max_matrix)

# Sorting the elements in a matrix
print("Sorting the elements in a matrix")
sorted_matrix <- matrix(sort(thismatrix), nrow = nrow(thismatrix), ncol = ncol(thismatrix))
print(sorted_matrix)

# Reshaping a matrix using array
print("Reshaping a matrix using array")
reshaped_array_matrix <- array(thismatrix, dim = c(2, 3))
print(reshaped_array_matrix)

# Checking for missing values in a matrix
print("Checking for missing values in a matrix")
missing_values_matrix <- is.na(thismatrix)
print(missing_values_matrix)

# Replacing missing values in a matrix
print("Replacing missing values in a matrix")
thismatrix[1, 1] <- NA
replaced_missing_values_matrix <- thismatrix
replaced_missing_values_matrix[is.na(replaced_missing_values_matrix)] <- 0
print(replaced_missing_values_matrix)

# Checking if any elements in the matrix are NA
print("Checking if any elements in the matrix are NA")
any_na <- any(is.na(thismatrix))
print(any_na)

# Checking if all elements in the matrix are NA
print("Checking if all elements in the matrix are NA")
all_na <- all(is.na(thismatrix))
print(all_na)

# Flattening a matrix using as.numeric
print("Flattening a matrix using as.numeric")
flattened_numeric_matrix <- as.numeric(thismatrix)
print(flattened_numeric_matrix)
