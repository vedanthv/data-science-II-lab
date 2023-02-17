# 5. CORRELATION AND COVARIANCE USING Python/R
# a. Find the correlation matrix.
# b. Plot the correlation plot on the dataset and visualize giving an overview of relationships among # nolint: line_length_linter.
# data on iris data.
# c. Analysis of covariance: variance (ANOVA), if data have categorical variables on iris data.  # nolint

library(datasets)
data(iris)
summary(iris)

# Correlation Plot
plot(iris)

# Correlation Matrix
print(cor(iris[, 1:4]))

# Diff Correlations
print(plot(iris$sepal.width, iris$sepal.length))


