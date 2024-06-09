# Filename: _029_s4_class.R
# Title: S4 Class in R
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: June 9, 2024 | Last Updated: June 9, 2024
# Language: R | Version: 4.4.0

# S4 Class
setClass(
    "Person",
    slots = c(
    name = "character",
    age = "numeric"
    )
)

# Constructor for validation
Person <- function(name, age) {
    if (!is.character(name) || length(name) != 1) {
    stop("Name must be a single string.")
    }
    if (!is.numeric(age) || length(age) != 1 || age < 0) {
    stop("Age must be a non-negative number.")
    }
    new("Person", name = name, age = age)
}

# Print method for Person class
setMethod("show", "Person", function(object) {
    cat("Person Name:", object@name, "\n")
    cat("Person Age:", object@age, "\n")
})

# Object creation
person_1 <- Person("Raghava", 20)
show(person_1)
