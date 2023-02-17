# 4. VISUALIZATIONS USING PYTHON/R
# a. Find the data distributions using box and scatter plot.
# b. Find the outliers using plot.
# c. Plot the histogram, bar chart and pie chart on sample data

print(str("airquality"))
boxplot(airquality$Ozone)

boxplot(airquality$Ozone,
main = "Mean ozone in parts per billion at Roosevelt Island",
xlab = "Parts Per Billion",
ylab = "Ozone",
col = "orange",
border = "brown",
horizontal = TRUE,
notch = TRUE
)

b <- boxplot(airquality$Ozone)
print(b)

# Outliers are the dots on outer end of whiskers

boxplot(Temp~Month,
data=airquality,
main="Different boxplots for each month",
xlab="Month Number",
ylab="Degree Fahrenheit",
col="orange",
border="brown"
)

# histogram
hist(airquality$Ozone)

# barchart
counts <- table(mtcars$gear)
barplot(counts,
    main = "Car Distribution",
    xlab = "Number of Gears"
)

# Pie Charts
expenditure <- c(600, 300, 150, 100, 200)

result <- pie(expenditure,
  main = "Monthly Expenditure Breakdown",
  labels = c("Housing", "Food", "Cloths", "Entertainment", "Other"),
  col = c("red", "orange", "yellow", "blue", "green")
)
print(result)
