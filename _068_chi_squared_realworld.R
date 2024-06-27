# Filename: _068_chi_squared_realworld.R
# Title: Chi-squared Distribution Example - Test Scores
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: June 27, 2024 | Last Updated: June 27, 2024
# Language: R | Version: 4.4.0

# PROBLEM

# We consider a real-world scenario where test scores of students follow
# a Chi-squared distribution with 5 degrees of freedom.


# Degrees of freedom for the Chi-squared distribution
df = 5

# Number of students
num_students = 150

# Generate random test scores using the Chi-squared distribution
test_scores = rchisq(num_students, df = df)

# Display the first few generated test scores
print(head(test_scores))

# Plot the histogram of the generated test scores
hist(test_scores,
    breaks = 30,
    col = "lightblue",
    border = "white",
    main = "Chi-squared Distribution of Test Scores",
    xlab = "Test Score",
    ylab = "Frequency"
)

# Add the theoretical density line
curve(dchisq(x, df = df) * num_students,
    add = TRUE,
    col = "red",
    lwd = 2
)
