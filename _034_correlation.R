# Filename: _034_correlation.R
# Title: Different types of correlation in R
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: June 12, 2024 | Last Updated: June 12, 2024
# Language: R | Version: 4.4.0

# Data
x <- c(54, 85, 86, 50, 42, 75, 65, 56)
y <- c(2.45, 1.21, 1.20, 2.84, 3.25, 1.86, 1.90, 2.32)

# Pearson correlation coefficient
pearson_corr <- cor(x, y, method = "pearson")
print(paste("Pearson correlation coefficient:", pearson_corr))

# Spearman correlation coefficient
spearman_corr <- cor(x, y, method = "spearman")
print(paste("Spearman correlation coefficient:", spearman_corr))

# Kendall correlation coefficient
kendall_corr <- cor(x, y, method = "kendall")
print(paste("Kendall correlation coefficient:", kendall_corr))
