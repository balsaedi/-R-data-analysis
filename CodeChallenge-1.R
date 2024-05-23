
# CODE CHALLENGE 1 TEMPLATE

# STUDENT NAME: ______________________
# STUDENT ID: ________________________

########################
# SECTION 1: Basic R Programming
########################

# Task 1: Write a function to calculate the factorial of a number using both iterative and recursive methods.

# Iterative method
factorial_iterative <- function(n) {
  result <- 1
  for (i in 1:n) {
    result <- result * i
  }
  return(result)
}

# Recursive method
factorial_recursive <- function(n) {
  if (n == 0) {
    return(1)
  } else {
    return(n * factorial_recursive(n - 1))
  }
}

# Test the functions
print(factorial_iterative(5)) # Expected output: 120
print(factorial_recursive(5)) # Expected output: 120

# Task 2: Demonstrate the use of control structures (if-else, for loop) to manipulate a vector of numbers.

# Create a vector of numbers
numbers <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

# Use if-else and for loop to manipulate the vector
result_vector <- c()
for (num in numbers) {
  if (num %% 2 == 0) {
    result_vector <- c(result_vector, num^2) # Square the even numbers
  } else {
    result_vector <- c(result_vector, num^3) # Cube the odd numbers
  }
}
print(result_vector) # Expected output: [1]  1  4 27 16 125 36 343 64 729 100

########################
# SECTION 2: Data Structures
########################

# Task 3: Create and manipulate vectors, matrices, lists, and data frames.

# Vector
vector <- c(1, 2, 3, 4, 5)
print(vector) # Expected output: [1] 1 2 3 4 5

# Matrix
matrix_data <- matrix(1:9, nrow = 3, ncol = 3)
print(matrix_data) # Expected output: 3x3 matrix with values from 1 to 9

# List
my_list <- list(name = "John", age = 25, scores = c(90, 85, 88))
print(my_list) # Expected output: list with name, age, and scores

# Data Frame
data_frame <- data.frame(name = c("John", "Jane", "Doe"), age = c(25, 30, 22), score = c(90, 85, 88))
print(data_frame) # Expected output: data frame with name, age, and score columns

# Task 4: Convert a list into a data frame and perform basic data operations (e.g., selecting columns, filtering rows).

# Convert list to data frame
list_to_df <- as.data.frame(my_list$scores)
names(list_to_df) <- "scores"
print(list_to_df) # Expected output: data frame with scores column

# Select columns
selected_columns <- data_frame[, c("name", "score")]
print(selected_columns) # Expected output: data frame with name and score columns

# Filter rows
filtered_rows <- data_frame[data_frame$age > 25, ]
print(filtered_rows) # Expected output: data frame with rows where age > 25

########################
# SECTION 3: Basic Data Handling
########################

# Task 5: Load and explore a dataset from R's built-in datasets (e.g., iris).

# Load the iris dataset
data(iris)
print(head(iris)) # Expected output: first 6 rows of the iris dataset

# Task 6: Summarize the data (mean, median, mode) and visualize basic distributions using histograms and box plots.

# Summary statistics
mean_values <- colMeans(iris[, 1:4])
median_values <- apply(iris[, 1:4], 2, median)

# Custom function to calculate mode
calculate_mode <- function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}
mode_values <- sapply(iris[, 1:4], calculate_mode)

print(mean_values) # Expected output: mean of each numeric column
print(median_values) # Expected output: median of each numeric column
print(mode_values) # Expected output: mode of each numeric column

# Visualization
library(ggplot2)

# Histograms
ggplot(iris, aes(x = Sepal.Length)) + 
  geom_histogram(binwidth = 0.5, fill = "blue", color = "black") +
  ggtitle("Histogram of Sepal Length")

# Box Plots
ggplot(iris, aes(x = Species, y = Sepal.Length)) + 
  geom_boxplot(fill = "lightblue", color = "black") +
  ggtitle("Box Plot of Sepal Length by Species")
```