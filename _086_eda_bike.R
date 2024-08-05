# Filename: _086_eda_bike.R
# Title: Exploratory data analysis for bikers dataset
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: August 5, 2024 | Last Updated: August 5, 2024
# Language: R | Version: 4.4.0

# Load necessary libraries
library(ggvis)
library(tidyverse)
library(ggplot2)


# Location
loc = 'datasets/bike_buyers_clean.csv'

# Load the dataset
bike_buyers <- read.csv(loc, header = TRUE, na.strings = '')

# Preview the data
head(bike_buyers)  # Display the first few rows of the dataset
str(bike_buyers)   # Structure of the dataset
summary(bike_buyers)  # Summary statistics of the dataset

# Columns to factors
bike_buyers$Marital.Status <- as.factor(bike_buyers$Marital.Status) 
bike_buyers$Gender <- as.factor(bike_buyers$Gender)
bike_buyers$Home.Owner <- as.factor(bike_buyers$Home.Owner)
bike_buyers$Purchased.Bike <- as.factor(bike_buyers$Purchased.Bike)

# Levels of categorical variables
print(levels(bike_buyers$Gender)) 
print(levels(bike_buyers$Marital.Status)) 

# Check for missing values
print(colSums(is.na(bike_buyers)))

# Histogram for numerical variables
hist(bike_buyers$Income, main = "Histogram of Income", xlab = "Income")
hist(bike_buyers$Children, breaks = 20, main = "Histogram of Children", xlab = "Number of Children")
hist(bike_buyers$Cars, breaks = 15, main = "Histogram of Cars", xlab = "Number of Cars")
hist(bike_buyers$Age, main = "Histogram of Age", xlab = "Age")

# Impute missing values
bike_buyers$Income[is.na(bike_buyers$Income)] <- median(bike_buyers$Income, na.rm = TRUE)
bike_buyers$Age[is.na(bike_buyers$Age)] <- median(bike_buyers$Age, na.rm = TRUE)

# Mode function for categorical variables
get_mode <- function(x) {                 
  unique_x <- unique(x)
  tabulate_x <- tabulate(match(x, unique_x))
  unique_x[tabulate_x == max(tabulate_x)]
}

# Impute missing values for categorical variables with mode
bike_buyers$Marital.Status[is.na(bike_buyers$Marital.Status)] <- get_mode(bike_buyers$Marital.Status)
bike_buyers$Gender[is.na(bike_buyers$Gender)] <- get_mode(bike_buyers$Gender)
bike_buyers$Children[is.na(bike_buyers$Children)] <- get_mode(bike_buyers$Children)
bike_buyers$Home.Owner[is.na(bike_buyers$Home.Owner)] <- get_mode(bike_buyers$Home.Owner)

# Impute missing values for 'Cars' with mean
bike_buyers$Cars[is.na(bike_buyers$Cars)] <- mean(bike_buyers$Cars, na.rm = TRUE)

# Confirm that there are no missing values
print(colSums(is.na(bike_buyers)))

# Save cleaned dataset
write.csv(bike_buyers, loc , quote = FALSE, row.names = TRUE)

# Visualizations

# Bar plot of Cars by Gender
counts <- table(bike_buyers$Cars, bike_buyers$Gender)
barplot(counts, main = 'Bar Plot of Cars by Gender', xlab = "Number of Cars", legend = rownames(counts))

# Scatter plot of Income
plot(bike_buyers$Income, main = 'Scatter Plot of Income', xlab = 'Index', ylab = 'Income')

# Histogram of Age with ggplot2
ggplot(bike_buyers, aes(x = Age)) +
  geom_histogram(bins = 30, fill = 'blue', color = 'black') +
  labs(title = 'Histogram of Age', x = 'Age', y = 'Count')

# Density plot of Income
plot(density(bike_buyers$Income), main = 'Income Density Spread', xlab = 'Income', ylab = 'Density')

# Scatter plot of Age vs. Gender
ggplot(bike_buyers, aes(y = Age, x = Gender)) +
  geom_point() +
  labs(title = 'Scatter Plot of Age vs Gender', x = 'Gender', y = 'Age')

# Scatter plot of Age vs. Income
ggplot(bike_buyers, aes(y = Age, x = Income)) +
  geom_point() +
  labs(title = 'Scatter Plot of Age vs Income', x = 'Income', y = 'Age')

# Enhanced scatter plot of Age vs. Income
p3 <- ggplot(bike_buyers, aes(x = Age, y = Income)) +
  geom_point(aes(color = Age), alpha = 0.5, size = 1.5, position = position_jitter(width = 0.25, height = 0)) +
  scale_x_continuous(name = "Age") +
  scale_color_continuous(name = "Age", low = "blue", high = "red") +
  labs(title = 'Scatter Plot of Age vs Income')
p3

# Trend plot of Age vs Occupation
p5 <- ggplot(bike_buyers, aes(x = Age, y = Occupation)) +
  geom_line(aes(color = Age)) +
  labs(title = 'Trend Plot of Age vs Occupation', x = 'Age', y = 'Occupation')
p5

# Faceted trend plot
p5 + facet_wrap(~Gender, ncol = 3)

# Boxplot for Income
ggplot(bike_buyers, aes(y = Income)) +
  geom_boxplot() +
  labs(title = 'Boxplot of Income', y = 'Income')

# Outlier detection and treatment
OutVals <- boxplot(bike_buyers$Income, plot = FALSE)$out
print(OutVals)

# Identify and remove outliers from Income
x <- bike_buyers$Income[!(bike_buyers$Income %in% OutVals)]
boxplot(x, main = 'Boxplot of Income Without Outliers')
