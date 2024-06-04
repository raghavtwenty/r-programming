# Filename: _013_strings.R
# Title: Strings and its built in functions in R
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: June 4, 2024 | Last Updated: June 4, 2024
# Language: R | Version: 4.4.0


# Strings
# To upper
print("To upper")
string <- "hello"
toup <- toupper(string)
print(toup)

# To lower
print("To lower")
string <- "HELLO"
tolow <- tolower(string)
print(tolow)

# String length
print("String length")
string <- "hello"
len <- nchar(string)
print(len)

# Substring
print("Substring")
string <- "hello"
substr <- substring(string, 2, 4)
print(substr)

# String split
print("String split")
string <- "hello world"
split_str <- strsplit(string, " ")
print(split_str)

# String paste
print("String paste")
string1 <- "hello"
string2 <- "world"
pasted_str <- paste(string1, string2)
print(pasted_str)

# String trim
print("String trim")
string <- "  hello  "
trimmed_str <- trimws(string)
print(trimmed_str)

# String replace
print("String replace")
string <- "hello world"
replaced_str <- sub("world", "there", string)
print(replaced_str)

# String replace all
print("String replace all")
string <- "hello world, world"
replaced_all_str <- gsub("world", "there", string)
print(replaced_all_str)

# String match
print("String match")
string <- "hello world"
pattern <- "world"
match_pos <- regexpr(pattern, string)
print(match_pos)

# String match all
print("String match all")
string <- "hello world, world"
pattern <- "world"
match_all_pos <- gregexpr(pattern, string)
print(match_all_pos)

# String detect
print("String detect")
string <- "hello world"
pattern <- "world"
detect <- grepl(pattern, string)
print(detect)

# String locate
print("String locate")
string <- "hello world"
pattern <- "world"
locate <- regexpr(pattern, string)
print(locate)

# String locate all
print("String locate all")
string <- "hello world, world"
pattern <- "world"
locate_all <- gregexpr(pattern, string)
print(locate_all)

# String extract
print("String extract")
string <- "hello world"
pattern <- "world"
extract <- regmatches(string, regexpr(pattern, string))
print(extract)

# String extract all
print("String extract all")
string <- "hello world, world"
pattern <- "world"
extract_all <- regmatches(string, gregexpr(pattern, string))
print(extract_all)

# String concatenate
print("String concatenate")
string1 <- "hello"
string2 <- "world"
concatenated_str <- paste0(string1, string2)
print(concatenated_str)

# String format
print("String format")
name <- "Raghava"
age <- 20
formatted_str <- sprintf("Name: %s, Age: %d", name, age)
print(formatted_str)

# String repetition
print("String repetition")
string <- "hello"
repeated_str <- strrep(string, 3)
print(repeated_str)

# String find and replace
print("String find and replace")
string <- "hello world"
pattern <- "world"
replacement <- "there"
find_replace_str <- sub(pattern, replacement, string)
print(find_replace_str)

# String find and replace all
print("String find and replace all")
string <- "hello world, world"
pattern <- "world"
replacement <- "there"
find_replace_all_str <- gsub(pattern, replacement, string)
print(find_replace_all_str)

# String replace part
print("String replace part")
string <- "hello world"
substring(string, 7, 11) <- "there"
print(string)

# String locate positions
print("String locate positions")
string <- "hello world"
pattern <- "o"
positions <- gregexpr(pattern, string)
print(positions)

# String contains
print("String contains")
string <- "hello world"
pattern <- "world"
contains <- grepl(pattern, string)
print(contains)

# String starts with
print("String starts with")
string <- "hello world"
pattern <- "^hello"
starts_with <- grepl(pattern, string)
print(starts_with)

# String ends with
print("String ends with")
string <- "hello world"
pattern <- "world$"
ends_with <- grepl(pattern, string)
print(ends_with)

# String substitution
print("String substitution")
string <- "hello world"
substitution <- sub("world", "R", string)
print(substitution)

# String substitution all
print("String substitution all")
string <- "hello world, world"
substitution_all <- gsub("world", "R", string)
print(substitution_all)

# String padding
print("String padding")
string <- "hello"
padded_str <- sprintf("%10s", string)
print(padded_str)

# String remove whitespace
print("String remove whitespace")
string <- "  hello world  "
removed_whitespace <- gsub("^\\s+|\\s+$", "", string)
print(removed_whitespace)

# String replace multiple spaces with single space
print("String replace multiple spaces with single space")
string <- "hello   world"
single_space_str <- gsub("\\s+", " ", string)
print(single_space_str)

# String split into characters
print("String split into characters")
string <- "hello"
char_split <- strsplit(string, "")
print(char_split)

# String paste with separator
print("String paste with separator")
string1 <- "hello"
string2 <- "world"
sep_str <- paste(string1, string2, sep <- "-")
print(sep_str)

# String concatenate with collapse
print("String concatenate with collapse")
string_vec <- c("hello", "world", "R")
collapsed_str <- paste(string_vec, collapse <- " ")
print(collapsed_str)

# Convert characters to raw bytes
print("charToRaw")
string <- "hello"
raw_bytes <- charToRaw(string)
print(raw_bytes)

# Convert raw bytes to characters
print("rawToChar")
raw_bytes <- charToRaw("hello")
char_string <- rawToChar(raw_bytes)
print(char_string)

# Compare two strings
print("String comparison")
string1 <- "hello"
string2 <- "world"
compare_result <- identical(string1, string2)
print(compare_result)


