# Filename: _030_r6_class.R
# Title: R6 Class in R
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: June 9, 2024 | Last Updated: June 9, 2024
# Language: R | Version: 4.4.0

# Install and Import
install.packages("R6")
library(R6)

# Person class in R6
Person <- R6Class("Person",
    # Class items
    public = list(
        name = NULL,
        age = NULL,

        # Constructor
        initialize = function(name, age) {
            self$name <- name
            self$age <- age
        },

        # Method
        print = function() {
            cat("Person Name:", self$name, "\n")
            cat("Person Age:", self$age, "\n\n")
        }
    )
)

# Employee class in R6
Employee <- R6Class("Employee",
    # Inheritance from person class
    inherit = Person,
    # Class items
    public = list(
        job_title = NULL,
        salary = NULL,

        # Constructor
        initialize = function(name, age, job_title, salary) {
            super$initialize(name, age)
            self$job_title <- job_title
            self$salary <- salary
        },

        # Method
        print = function() {
            super$print()
            cat(self$name, "Job Title:", self$job_title, "\n")
            cat(self$name, "Salary:", self$salary, "\n")
        },

        # Method
        calculate_annual_salary = function() {
            return(self$salary * 12)
        }
    )
)

# Person class object creation
Person_1 <- Person$new("Steve Jobs", 55)
Person_1$print()

# Employee class object creation
Person_2 <- Employee$new("Raghava", 20, "Engineer", 1)
Person_2$print()

# Calculate annual salary for employee
annual_salary <- Person_2$calculate_annual_salary()
cat(Person_2$name, "Annual Salary:", annual_salary, "\n")
