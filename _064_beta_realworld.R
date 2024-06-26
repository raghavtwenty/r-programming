# Filename: _064_beta_realworld.R
# Title: Beta Distribution Example - Distribution of Grades
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: June 26, 2024 | Last Updated: June 26, 2024
# Language: R | Version: 4.4.0

# PROBLEM

# We consider a real-world scenario where the distribution of grades of students
# in a class is modeled using a Beta distribution with shape parameters 2 and 5.


# Parameters for the Beta distribution
shape1_param = 2  # Shape parameter alpha
shape2_param = 5  # Shape parameter beta

# Number of students
num_students = 200

# Generate random grades using the Beta distribution
grades = rbeta(num_students, shape1 = shape1_param, shape2 = shape2_param)

# Display the first few generated grades
print(head(grades))

# Plot the histogram of the generated grades
hist(grades,
    breaks = 30,
    col = "lightblue",
    border = "white",
    main = "Beta Distribution of Grades",
    xlab = "Grade",
    ylab = "Frequency"
)

# Add the theoretical density line
curve(dbeta(x, shape1 = shape1_param, shape2 = shape2_param) * num_students,
    add = TRUE,
    col = "red",
    lwd = 2
)
