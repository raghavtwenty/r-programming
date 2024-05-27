# Filename: _005_loops.R
# Title: Loop statements in R
# Author: Raghava | GitHub : @raghavtwenty
# Date Created: June 20, 2023 | Last Updated: May 27, 2024
# Language: R | Version: 4.4.0

# Input from the user
cat("Enter number of times: ")
num <- readLines("stdin",1)

# Datatype conversion
num <- as.integer(num)

# For Loop
for (i in 1:num){
    print(paste(i, " - Hello in for loop"))
}

# While Loop
c = 1
while (c<=num){
    print(paste(c, " - Hello in while loop"))
    c <- c + 1
}

# Repeat Loop
i <- 1
repeat {
    print(paste(i, " - Hello in repeat loop"))
    i <- i + 1
    if (i > num) {
        break
    }
}