# DESCRIPTIVE STATISTICS IN R
# a. Write an Python/R script to find basic descriptive statistics using summary, str, quartile function
# on mtcars & cars datasets.
# b. Write an Python/R script to find subset of dataset by using subset (), aggregate () functions on
# iris dataset.

library(tidyverse)

df <- mtcars
print("Head")
print("--------------------")
print(head(df))
print('-----------------------')
print("Tail")
print(tail(df))

print(str(df)) # structure of data

print(summary(df)) # summary of data

print("----------------------------------------------------")
print(quantile(df$mpg)) # quantile of data

df <- iris

# Subset of data
print(summary(df))
print(df[1:3])
print(subset(df,Species == "versicolor"))
print(subset(df,Sepal.Length == 6.2))

# Aggregate
print(aggregate(df$Sepal.Width,list(df$Sepal.Width),FUN = mean))

