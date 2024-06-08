# Filename: _026_workspace_functions.R
# Title:  Workspace functions in R
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: June 8, 2024 | Last Updated: June 8, 2024
# Language: R | Version: 4.4.0

# List the objects in the current workspace
print("List of objects in the workspace:")
print(ls())

# Remove objects from the workspace (example objects, replace with actual object names)
print("Removing objects 'object1' and 'object2' from the workspace")
rm(object1, object2)

# Remove all objects from the workspace
print("Removing all objects from the workspace")
rm(list = ls())

# Trigger garbage collection
print("Triggering garbage collection")
print(gc())

# Save one or more R objects to a file (example objects, replace with actual object names)
print("Saving objects 'object1' and 'object2' to a file 'mydata.RData'")
save(object1, object2, file = "mydata.RData")

# Load R objects saved in a file back into the workspace
print("Loading objects from file 'mydata.RData'")
load("mydata.RData")

# Save the entire workspace to a file
print("Saving the entire workspace to a file 'workspace.RData'")
save.image(file = "workspace.RData")

# List files in a directory
print("List of files in the current directory:")
print(list.files())

# Remove files from the disk
print("Removing file 'mydata.RData' from the disk")
file.remove("mydata.RData")

# Get the current working directory
print("Current working directory:")
print(getwd())

# Set the current working directory
print("Setting the current working directory to '/path/to/directory'")
setwd("/path/to/directory")

# Create a new directory
print("Creating a new directory 'new_directory'")
dir.create("new_directory")

# Check if a directory exists
print("Checking if directory 'new_directory' exists:")
print(dir.exists("new_directory"))

# Delete a directory and its contents
print("Deleting directory 'new_directory' and its contents")
unlink("new_directory", recursive = TRUE)

# Display information about the current R session, including loaded packages
print("Information about the current R session:")
print(sessionInfo())

# Retrieve the value of environment variables
print("Value of environment variable 'HOME':")
print(Sys.getenv("HOME"))

# Set the value of environment variables
print("Setting environment variable 'MY_VAR' to 'my_value'")
Sys.setenv(MY_VAR = "my_value")

# Set or retrieve options for the current R session
print("Setting the number of digits to display in numerical outputs to 4")
options(digits = 4)

# Retrieve the value of a specific option
print("Current value of the 'digits' option:")
print(getOption("digits"))

# Return the R home directory
print("R home directory:")
print(R.home())

# Save the command history to a file
print("Saving command history to a file 'my_history.Rhistory'")
savehistory(file = "my_history.Rhistory")

# Load the command history from a file
print("Loading command history from a file 'my_history.Rhistory'")
loadhistory(file = "my_history.Rhistory")

# Display the search path for R objects
print("Search path for R objects:")
print(search())

# Attach a data frame or list to the R search path
print("Attaching a data frame to the search path")
# Example data frame
df <- data.frame(a = 1:3, b = c("A", "B", "C"))
attach(df)

# Detach a data frame or list from the R search path
print("Detaching the data frame from the search path")
detach(df)

# Create a temporary file
print("Creating a temporary file")
temp_file <- tempfile()
print(temp_file)

# Check for file or directory existence
print("Checking if 'example_file.txt' exists:")
print(file.exists("example_file.txt"))

# Copy files
print("Copying 'source_file.txt' to 'destination_file.txt'")
file.copy("source_file.txt", "destination_file.txt")

# Rename files
print("Renaming 'old_name.txt' to 'new_name.txt'")
file.rename("old_name.txt", "new_name.txt")

# Get information about a file
print("Getting information about 'example_file.txt'")
file.info("example_file.txt")
