import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

df = pd.read_xlsx("https://github.com/vedanthv/data-science-II-lab/blob/main/AirQualityUCI.xlsx")

# Boxplot.
plt.boxplot(df['T'])
plt.show()

# Histogram.
plt.hist(df["AH"])
plt.show()

# Bar Chart.
plt.bar(df["T"])
plt.show()

