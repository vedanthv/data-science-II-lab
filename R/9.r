# 9. CLASSIFICATION MODEL
# a. Install relevant package for classification.
# b. Choose classifier for a classification problem.
# c. Evaluate the performance of classifier

library(datasets)
library(caret)

data(iris)

print(sum(is.na(iris)))

set.seed(100)

TrainingIndex <- createDataPartition(iris$Species, p=0.8, list = FALSE) # nolint
TrainingSet <- iris[TrainingIndex,] # Training Set # nolint
TestingSet <- iris[-TrainingIndex,] # Test Set # nolint

# SVM Model
Model <- train(Species ~ ., data = TrainingSet,
               method = "svmPoly",
               na.action = na.omit,
               preProcess=c("scale","center"),
               trControl= trainControl(method="none"),
               tuneGrid = data.frame(degree=1,scale=1,C=1)
)

# Build CV model
Model.cv <- train(Species ~ ., data = TrainingSet,
                  method = "svmPoly",
                  na.action = na.omit,
                  preProcess=c("scale","center"),
                  trControl= trainControl(method="cv", number=10),
                  tuneGrid = data.frame(degree=1,scale=1,C=1)
)

# Apply model for prediction
Model.training <-predict(Model, TrainingSet) # Apply model to make prediction on Training set # nolint
Model.testing <-predict(Model, TestingSet) # Apply model to make prediction on Testing set # nolint 
Model.cv <-predict(Model.cv, TrainingSet) # Perform cross-validation # nolint

# Model performance (Displays confusion matrix and statistics)
Model.training.confusion <-confusionMatrix(Model.training, TrainingSet$Species) # nolint # nolint
Model.testing.confusion <-confusionMatrix(Model.testing, TestingSet$Species) # nolint
Model.cv.confusion <-confusionMatrix(Model.cv, TrainingSet$Species) # nolint # nolint

print(Model.training.confusion)
print(Model.testing.confusion)
print(Model.cv.confusion)
