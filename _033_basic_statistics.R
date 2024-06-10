# Filename: _033_basic_statistics.R
# Title: Basic statistical functions in R
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: June 10, 2024 | Last Updated: June 10, 2024
# Language: R | Version: 4.4.0

# Scores data
scores <- c(78, 93, 68, 84, 90, 74, 64, 55, 80)

# Minimum score
print("Minimum score")
print(min(scores))

# Maximum score
print("Maximum score")
print(max(scores))

# Quantiles
print("Quantiles")
print(quantile(scores))

# 25th percentile (First Quartile)
print("25th percentile (First Quartile)")
print(quantile(scores, 0.25))

# 75th percentile (Third Quartile)
print("75th percentile (Third Quartile)")
print(quantile(scores, 0.75))

# Five-number summary
print("Five-number summary")
print(fivenum(scores))

# Summary statistics
print("Summary statistics")
print(summary(scores))

# Mean
print("Mean")
print(mean(scores))

# Median
print("Median")
print(median(scores))

# Standard Deviation
print("Standard Deviation")
print(sd(scores))

# Variance
print("Variance")
print(var(scores))

# Range
print("Range")
print(range(scores))

# Interquartile Range (IQR)
print("Interquartile Range (IQR)")
print(IQR(scores))

# Sum of scores
print("Sum of scores")
print(sum(scores))

# Length of the vector
print("Length of the vector")
print(length(scores))

# Product of scores
print("Product of scores")
print(prod(scores))

# Cumulative sum
print("Cumulative sum")
print(cumsum(scores))

# Cumulative product
print("Cumulative product")
print(cumprod(scores))
