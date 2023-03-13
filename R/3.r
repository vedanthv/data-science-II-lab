# 3. READING AND WRITING DIFFERENT TYPES OF DATASETS
# a. Reading types of data sets (.txt, .csv) from web and disk and writing in file in specific disk
# location. different
# b. Reading Excel data sheet in Python/R.
# c. Reading XML dataset in Python/R.

df <- read.csv("https://gist.githubusercontent.com/curran/a08a1080b88344b0c8a7/raw/0e7a9b0a5d22642a06d3d5b9bcbad9890c8ee534/iris.csv")
print(head(df))

df <- read.delim("http://courses.washington.edu/b517/Datasets/MRI.txt")
print(head(df))

library("readxl")
data_sample <- read.xlsx('https://github.com/vedanthv/data-science-II-lab/blob/main/R/sample.xlsx') # nolint
print(data_sample)

# Load the library xml2
library(xml2)
# Read the xml file
food_data= read_xml('https://www.w3schools.com/xml/simple.xml')
# display food_data
print(food_data)

# convert to dataframe
#convert the parsed XML to a dataframe
df_food <- xmlToDataFrame(nodes=getNodeSet(food_xml, "//food"))
print(df_food)

