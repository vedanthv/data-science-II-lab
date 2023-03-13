import pandas as pd

df = pd.read_csv("https://github.com/vedanthv/data-science-II-lab/blob/main/mtcars.csv")

# Correlation
print(df.corr(df,method = "pearson"))

# Covariance
print(df.cov(df["mpg"]))