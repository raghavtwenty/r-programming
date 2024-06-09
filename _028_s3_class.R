# Filename: _028_s3_class.R
# Title: S3 Class in R
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: June 9, 2024 | Last Updated: June 9, 2024
# Language: R | Version: 4.4.0

# Constructor in S3 Class
create_person <- function(name, age) {
    person <- list(name = name, age = age)
    class(person) <- "Person"
    return(person)
}

# Define print method for Person class
print.Person <- function(person) {
    cat("Person Name:", person$name, "\n")
    cat("Person Age:", person$age, "\n")
}

# Object creation
person_1 <- create_person("Raghava", 20)
print(person_1)
