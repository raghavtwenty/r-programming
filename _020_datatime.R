# Filename: _020_datatime.R
# Title: Date Time and its built-in functions in R
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: June 6, 2024 | Last Updated: June 6, 2024
# Language: R | Version: 4.4.0


# Date and Time Functions in R
# Current date and time using Sys.Date() and Sys.time()
print("Current date and time using Sys.Date() and Sys.time()")
current_date <- Sys.Date()
current_time <- Sys.time()
print(current_date)
print(current_time)

# Extracting components from date-time
print("Extracting components from date-time")
year <- as.POSIXlt(current_date)$year + 1900
month <- as.POSIXlt(current_date)$mon + 1
day <- as.POSIXlt(current_date)$mday
hour <- as.POSIXlt(current_time)$hour
minute <- as.POSIXlt(current_time)$min
second <- as.POSIXlt(current_time)$sec

# Printing extracted components
print("Year:")
print(year)
print("Month:")
print(month)
print("Day:")
print(day)
print("Hour:")
print(hour)
print("Minute:")
print(minute)
print("Second:")
print(second)

# Creating date time objects
print("Creating date-time objects")

# Date time assigning
print("Date time assigning")
x <- as.Date("2024-06-06")
print(x)

# Creating date-time from POSIXct
print("Creating date-time from POSIXct")
dt <- as.POSIXct("2024-06-06 12:34:56")
print(dt)

# Creating date-time from POSIXlt
print("Creating date-time from POSIXlt")
lt <- as.POSIXlt("2024-06-06 12:34:56")
print(lt)

# Creating date-time using ISOdate
print("Creating date-time using ISOdate")
iso_dt <- ISOdate(2024, 6, 6, 12, 34, 56)
print(iso_dt)

# Creating date-time using ISOdatetime
print("Creating date-time using ISOdatetime")
iso_dttm <- ISOdatetime(2024, 6, 6, 12, 34, 56)
print(iso_dttm)

# Creating date-time using strptime
print("Creating date-time using strptime")
strp_dt <- strptime("2024-06-06 12:34:56", format = "%Y-%m-%d %H:%M:%S")
print(strp_dt)

# Formatting date-time
print("Formatting date-time")
formatted_date <- format(as.Date("2024-06-06"), "%B %d, %Y")
print(formatted_date)

# Formatting POSIXct
print("Formatting POSIXct")
formatted_posixct <- format(as.POSIXct("2024-06-06 12:34:56"), "%Y-%m-%d %H:%M:%S")
print(formatted_posixct)

# Calculations with date-time
print("Calculations with date-time")
today <- Sys.Date()
print(today)

yesterday <- today - 1
print(yesterday)

one_week_later <- today + 7
print(one_week_later)

# Time difference
print("Calculating time difference")
dt1 <- as.POSIXct("2024-06-06 12:34:56")
dt2 <- as.POSIXct("2024-06-07 12:34:56")
time_diff <- difftime(dt2, dt1, units = "days")
print(time_diff)

# Internal representation
print("Internal representation")
internal_representation <- unclass(as.Date("2024-06-06"))
print(internal_representation)

# Day of the week
print("Day of the week")
day_of_week <- weekdays(as.Date("2024-06-06"))
print(day_of_week)

# Month name
print("Month name")
month_name <- months(as.Date("2024-06-06"))
print(month_name)

# Quarter of the year
print("Quarter of the year")
quarter_of_year <- quarters(as.Date("2024-06-06"))
print(quarter_of_year)

# Current date-time
print("Current date-time")
print(Sys.time())

# Current date
print("Current date")
print(Sys.Date())

# Internal representation
print("Internal representation")
print(unclass(as.Date("2024-06-06")))

# Day of the week
print("Day of the week")
print(weekdays(as.Date("2024-06-06")))

# Month name
print("Month name")
print(months(as.Date("2024-06-06")))

# Quarter of the year
print("Quarter of the year")
print(quarters(as.Date("2024-06-06")))

# Checking if the date is NA
print("Checking if the date is NA")
is_na_date <- is.na(as.Date(NA))
print(is_na_date)

# Checking if the date is a weekday
print("Checking if the date is a weekday")
is_weekday <- weekdays(as.Date("2024-06-06")) %in% c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
print(is_weekday)

# Checking if the date is a weekend
print("Checking if the date is a weekend")
is_weekend <- weekdays(as.Date("2024-06-06")) %in% c("Saturday", "Sunday")
print(is_weekend)
