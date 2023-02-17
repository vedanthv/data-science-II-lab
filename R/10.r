# 10. CLUSTERING MODEL
# a. Clustering algorithms for unsupervised classification.
# b. d. Plot the cluster data using R visualizations.

install.packages("factoextra")
install.packages("cluster")
install.packages("magrittr")

library("cluster")
library("magrittr")
library("factoextra")

# Load  and prepare the data
data("USArrests")
my_data <- USArrests %>%
  na.omit() %>%          # Remove missing values (NA)
  scale()                # Scale variables
# View the firt 3 rows
print(head(my_data, n = 3))

res.dist <- get_dist(USArrests, stand = TRUE, method = "pearson")

print(fviz_dist(res.dist,
    gradient = list(low = "#00AFBB", mid = "white", high = "#FC4E07")
))


# K Means
set.seed(123)
km.res <- kmeans(my_data, 3, nstart = 25)
# Visualize
library("factoextra")
print(fviz_cluster(km.res,
    data = my_data,
    ellipse.type = "convex",
    palette = "jco",
    ggtheme = theme_minimal()
))


