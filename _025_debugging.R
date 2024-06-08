# Filename: _025_debugging.R
# Title: Debugging in R
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: June 8, 2024 | Last Updated: June 8, 2024
# Language: R | Version: 4.4.0

# Set a breakpoint in a function
print("Setting a breakpoint in the 'mean' function")
debug(mean)

# Remove the breakpoint from a function
print("Removing the breakpoint from the 'mean' function")
undebug(mean)

# Enter the debugger manually
print("Entering the debugger manually")
browser()

# Print the call stack
print("Printing the call stack")
traceback()

# Debugging inside loops
print("Debugging inside loops using browser()")
for (i in 1:3) {
    print(i)
    if (i == 2) browser()
}

# Options for detailed error messages
print("Setting options for detailed error messages")
options(show.error.messages = TRUE, keep.source = TRUE)

# Trace function entry and exit
print("Tracing function entry and exit")
trace("mean", exit = quote(cat("Exiting mean\n")))
mean(1:10)
untrace("mean")

# Handling warnings as errors
print("Handling warnings as errors")
options(warn = 2)
# Example: intentionally cause a warning
sqrt(-1)

# Set conditional breakpoints
print("Setting a conditional breakpoint inside a function")
test_function <- function(x) {
    if (x == 5) browser()
    x + 1
}
print(test_function(3))

# Set the error option to use recover()
print("Setting the global error option to use recover()")
options(error = recover)

# Define a function that causes an error
print("Defining a function that will cause an error")
cause_error <- function() {
x <- log("a")
    return(x)
}

# Call the function to trigger the error and enter recover mode
print("Calling the function to trigger an error")
cause_error()