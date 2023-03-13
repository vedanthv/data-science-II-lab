import pandas as pd

# reading csv files
df = pd.read_csv("https://gist.githubusercontent.com/curran/a08a1080b88344b0c8a7/raw/0e7a9b0a5d22642a06d3d5b9bcbad9890c8ee534/iris.csv")
print(df.head())

# reading text files
df = pd.read_csv("http://courses.washington.edu/b517/Datasets/MRI.txt")
print(df.head())

# reading excel files
df = pd.read_excel("https://github.com/vedanthv/data-science-II-lab/blob/main/R/sample.xlsx")
print(df.head())

# reading xml files
df = pd.read_xml("https://www.w3schools.com/xml/simple.xml")
