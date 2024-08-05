# Filename: _085_eda_train.R
# Title: Exploratory data analysis for train dataset
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: August 5, 2024 | Last Updated: August 5, 2024
# Language: R | Version: 4.4.0

# Location
loc = 'datasets/titan_train.csv'

# load csv
train_data = read.csv(loc, header=T, na.strings='')

# 1 - read all values
print(read.table(loc, header = TRUE,  sep = '	',  stringsAsFactors = FALSE))

# 2 - read first 10 values 
print(head(train_data))

# 3- summary of the data
print(summary(train_data))

# 4 - categorical conversion
train_data$Survived <- as.factor(train_data$Survived)
train_data$Gender <- as.factor(train_data$Gender)


# 5 - finding the sum of null values in a columns
print(colSums(is.na(train_data)))


# 6 - Convert the gender column to factor data type
train_data$Gender <- as.factor(train_data$Gender)
print(train_data$Gender)


# 7 - different types of data in a column
print(levels(train_data$Gender))
print(levels(train_data$Survived))