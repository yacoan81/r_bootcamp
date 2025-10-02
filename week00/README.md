# R Basics: Vectors, Lists, Data Frames, and Matrices

This document introduces the four most common data structures in R: **vectors, lists, data frames, and matrices**.  

---

## Vectors
- The most basic data structure in R.
- A **vector** is a sequence of elements of the **same type** (numeric, character, or logical).

```r
# Numeric vector
v_num <- c(1, 2, 3, 4, 5)

# Character vector
v_char <- c("a", "b", "c")

# Logical vector
v_log <- c(TRUE, FALSE, TRUE)

# Indexing
v_num[1]        # First element
v_num[2:4]      # Elements 2 to 4
# r_bootcamp

# Create a list
my_list <- list(
  name = "Alice",
  age = 30,
  scores = c(90, 85, 92),
  passed = TRUE
)

# Access elements
my_list$name
my_list[[2]]
my_list$scores[1]

# Create a data frame
df <- data.frame(
  name = c("Alice", "Bob", "Charlie"),
  age = c(25, 30, 35),
  score = c(90, 85, 88)
)

# Access columns
df$name
df[["age"]]
df[1, ]     # First row
df[, 2]     # Second column

# Create a matrix
m <- matrix(1:9, nrow = 3, ncol = 3)

# Indexing
m[1, 2]     # Row 1, Col 2
m[, 3]      # Entire 3rd column
m[2, ]      # Entire 2nd row

# Vector -> Matrix
v <- 1:6
matrix(v, nrow = 2)

# Matrix -> Data Frame
m <- matrix(1:6, nrow = 2)
as.data.frame(m)

# List -> Data Frame (if elements are same length)
l <- list(a = 1:3, b = 4:6)
as.data.frame(l)

# Data Frame -> Matrix (only if all columns are same type)
as.matrix(df)

