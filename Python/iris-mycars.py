import pandas as pd 
import numpy as np

# mtcars dataset
df = pd.read_csv("C:\Users\student.dsu.000\Desktop\vb\mtcars.csv")

# the first five rows of the dataset are
print(df.head(mtcars))

# the last five rows of the dataset are
print(df.tail(mtcars))

# the summary of the dataset is
print(df.describe())

# quantiles of mtcars
print(df.quantile(q = 0.5)) # calculates the 50th percentile
print(df.quantile(q = 0.75)) # calculates the 75th percentile

# using the iris dataset
df2 = pd.read_csv("C:\Users\student.dsu.000\Desktop\vb\iris.csv")

# the first five rows of the dataset are
print(df2.head(mtcars))

# the last five rows of the dataset are
print(df2.tail(mtcars))

# the summary of the dataset is
print(df2.describe())

# quantiles of mtcars
print(df2.quantile(q = 0.5)) # calculates the 50th percentile
print(df2.quantile(q = 0.75)) # calculates the 75th percentile


