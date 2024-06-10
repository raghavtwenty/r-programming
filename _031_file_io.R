# Filename: _031_file_io.R
# Title: Reading & Writing in different file formats
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: June 10, 2024 | Last Updated: June 10, 2024
# Language: R | Version: 4.4.0

# CSV
data_csv <- read.csv("data.csv")
write.csv(data_csv, "output.csv", row.names = FALSE)

# Text file
data_txt <- read.delim("data.txt", sep = "\t")
write.table(data_txt, "output.txt", sep = "\t", row.names = FALSE)

# Excel
library(readxl)
data_xls <- read_excel("data.xlsx")
write.xlsx(data_xls, "output.xlsx", row.names = FALSE)

# JSON
library(jsonlite)
data_json <- fromJSON("data.json")
writeLines(toJSON(data_json), "output.json")

# Feather
library(feather)
data_feather <- read_feather("data.feather")
write_feather(data_feather, "output.feather")

# XML
library(XML)
data_xml <- xml2::read_xml("data.xml")
xml2::write_xml(data_xml, "output.xml")

# HDFS
library(rhdf5)
data_hdf5 <- h5read("data.h5", "/dataset")
h5write(data_hdf5, "output.h5", "/dataset")

# SQL
library(RSQLite)

# Establishing connection with MySQL database
con <- dbConnect(RSQLite::SQLite(),
                    dbname = "data.sqlite",
                    host = "localhost",
                    username = "your_username",
                    password = "your_password")
data_sqlite <- dbGetQuery(con, "SELECT * FROM table_name")
dbWriteTable(con, "output_sqlite", data_sqlite, overwrite = TRUE)
