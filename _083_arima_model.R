# Filename: _083_arima_model.R
# Title: Arima Model in R
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: August 4, 2024 | Last Updated: August 4, 2024
# Language: R | Version: 4.4.0

# Install and load necessary packages
install.packages("readxl")
install.packages("forecast")
install.packages("ggplot2")
install.packages("tseries")

# Load required library
library(readxl)
library(forecast)
library(ggplot2)
library(tseries)

# Read the data from the .xlsx file
file_path <- "datasets/arima_data.xlsx"
gross <- read_excel(file_path)

# Time series object conversion
grosstime <- ts(gross$`Gross price`, start = min(gross$Year), frequency = 1)

# Plot the time series data
plot(grosstime, main = "Gross Price Over Time", xlab = "Year", ylab = "Gross Price")

# ACF and PACF plots
acf(as.numeric(grosstime), main = "ACF of Gross Price")
pacf(as.numeric(grosstime), main = "PACF of Gross Price")

# Augmented Dickey-Fuller Test
adf_result <- adf.test(grosstime)
print(adf_result)

# ARIMA model
grossmodel <- auto.arima(grosstime, ic = "aic", trace = TRUE)
summary(grossmodel)

# Plot residuals ACF and PACF
acf(residuals(grossmodel), main = "ACF of ARIMA Residuals")
pacf(residuals(grossmodel), main = "PACF of ARIMA Residuals")

# Forecast the next 10 years
mygrossforecast <- forecast(grossmodel, level = c(95), h = 10)
plot(mygrossforecast)

# Ljung-Box test on residuals
lb_test_3 <- Box.test(residuals(grossmodel), lag = 3, type = "Ljung-Box")
lb_test_6 <- Box.test(residuals(grossmodel), lag = 6, type = "Ljung-Box")

# Final Show
print(lb_test_3)
print(lb_test_6)
