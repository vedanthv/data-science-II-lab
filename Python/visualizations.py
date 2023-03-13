import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

df = pd.read_csv("C:\Users\student.dsu.000\Desktop\vb\AirQualityUCI.csv")

# Boxplot
plt.boxplot(df['T'])
plt.show()

# Histogram
plt.hist(df["AH"])
plt.show()

# Bar Chart
plt.bar(df["T"])
plt.show()

