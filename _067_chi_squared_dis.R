# Filename: _067_chi_squared_dis.R
# Title: Chi-Square Distribution
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: June 27, 2024 | Last Updated: June 27, 2024
# Language: R | Version: 4.4.0

# Description of functions:
# dchisq: Chi-square probability density function (pdf)
# pchisq: Chi-square distribution cumulative distribution function (cdf)
# qchisq: Chi-square quantile function
# rchisq: Chi-square pseudorandom number generation

# Parameters for the chi-square distribution
df_param = 5  # Degrees of freedom (k)

# Define the range of values to consider
x_values = seq(0, 20, by = 0.1)

# Calculate chi-square densities for the range of values
chisq_densities = dchisq(x_values, df = df_param)

# Display the calculated densities
print(chisq_densities)

# Plot the chi-square densities
plot(x_values, chisq_densities,
    col = "red",
    type = "l",
    lwd = 2,
    main = "Chi-Square Distribution (df=5)",
    xlab = "x",
    ylab = "Density")
