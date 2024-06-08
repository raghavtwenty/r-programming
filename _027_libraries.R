# Filename: _027_libraries.R
# Title:  Libraries and packages in R
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: June 8, 2024 | Last Updated: June 8, 2024
# Language: R | Version: 4.4.0

# ggplot is used for data visualization

# Install a package from CRAN
print("Installing the 'ggplot2' package from CRAN")
install.packages("ggplot2")

# Load a package into the current session
print("Loading the 'ggplot2' package")
library(ggplot2)

# Check if a package is installed
print("Checking if the 'ggplot2' package is installed")
print(requireNamespace("ggplot2", quietly = TRUE))

# Load a package only if it is installed
print("Loading the 'ggplot2' package only if it is installed")
if (require("ggplot2", quietly = TRUE)) {
    print("Package 'ggplot2' is loaded")
} else {
    print("Package 'ggplot2' is not installed")
}

# List all installed packages
print("Listing all installed packages")
print(installed.packages())

# Get information about a specific package
print("Getting information about the 'ggplot2' package")
print(packageDescription("ggplot2"))

# List the contents of a package
print("Listing the contents of the 'ggplot2' package")
print(ls("package:ggplot2"))

# Update installed packages
print("Updating all installed packages")
update.packages()

# Remove an installed package
print("Removing the 'ggplot2' package")
remove.packages("ggplot2")

# Load all packages in a character vector
print("Loading all packages listed in a character vector")
packages <- c("dplyr", "tidyr")
sapply(packages, library, character.only = TRUE, quietly = TRUE)

# Set the repository options
print("Setting the repository options")
options(repos = c(CRAN = "https://cran.r-project.org"))

# Load a package from a specific library location
print("Loading the 'dplyr' package from a specific library location")
library(dplyr, lib.loc = "/path/to/library")

# Install a package from a specific repository
print("Installing the 'ggplot2' package from a specific repository")
install.packages("ggplot2", repos = "https://cran.r-project.org")

# Find a package
print("Finding the 'ggplot2' package")
print(find.package("ggplot2"))

# List all attached packages
print("Listing all attached packages")
print(search())

# Detach a package
print("Detaching the 'ggplot2' package")
detach("package:ggplot2", unload = TRUE)

# List available packages on CRAN
print("Listing available packages on CRAN")
print(available.packages())

# Install a package from GitHub
print("Installing the 'dplyr' package from GitHub (requires 'devtools')")
install.packages("devtools")
library(devtools)
install_github("tidyverse/dplyr")

# Check the current package version
print("Checking the current version of the 'ggplot2' package")
print(packageVersion("ggplot2"))

# Get the help documentation for a package
print("Getting help documentation for the 'ggplot2' package")
help(package = "ggplot2")

# Search for a package by name or keyword
print("Searching for a package by name or keyword")
# Example: Search for packages related to "ggplot2"
available.packages()[grep("ggplot2", available.packages()[, "Package"]), ]

# Load a package and check if it loaded correctly
print("Loading the 'dplyr' package and checking if it loaded correctly")
if (require(dplyr, quietly = TRUE)) {
    print("Package 'dplyr' loaded successfully")
} else {
    print("Failed to load package 'dplyr'")
}

# List the citation information for a package
print("Listing the citation information for the 'ggplot2' package")
print(citation("ggplot2"))

# List the dependencies of a package
print("Listing the dependencies of the 'ggplot2' package")
print(tools::package_dependencies("ggplot2", recursive = TRUE))

# Install packages from a local source
print("Installing the 'myPackage' package from a local source")
install.packages("/path/to/myPackage.tar.gz", repos = NULL, type = "source")

# List the priority packages
print("Listing the priority packages")
print(installed.packages(priority = "high"))

# Summarize the package check results
print("Summarizing the package check results")
library(tools)
print(tools::check_packages_in_dir_results("/path/to/check_results"))

# Get the maintainer of a package
print("Getting the maintainer of the 'ggplot2' package")
print(maintainer("ggplot2"))

# Load a package with error handling
print("Loading the 'ggplot2' package with error handling")
tryCatch({
        library(ggplot2)
        print("Package 'ggplot2' loaded successfully")
    }, error = function(e) {
    print("Error loading package 'ggplot2'")
    }
)
