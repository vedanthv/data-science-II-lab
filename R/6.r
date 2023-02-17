# 6. REGRESSION MODEL using Python/R
# Import data from web storage. Name the dataset and now do Logistic Regression to find out relation between variables that are affecting the admission of a student in an institute based on his or her GRE score, GPA obtained and rank of the student. Also check if the model is fit or not.  # nolint

admission <- read_csv("D:\University\Semester 6\DS Lab\R\Admission_Predict.csv") # nolint

knitr::kable(head(admission, 10))

names(admission) <- str_replace_all(str_to_lower(names(admission)), " ", "_")
admission[,"research"] <- as.logical(as.integer( unlist(admission[,"research"]))) # nolint

set.seed(100)
intrain <- sample(nrow(admission), nrow(admission) *.8)

admission_train <- admission[intrain,]
admission_test <- admission[-intrain,]

ggcorr(admission_train, label = T, hjust = .7, layout.exp = 1, label_size = 4, cex = 3) # nolint

model_admission <- lm(formula = chance_of_admit ~ gre_score + toefl_score + university_rating + lor + cgpa + research, data = admission_train) # nolint

summary(model_admission)

hist(model_admission$residuals)

shapiro.test(model_admission$residuals)

MSE(y_pred = model_admission$fitted.values, y_true = admission_train$chance_of_admit) # nolint

RMSE(y_pred = model_admission$fitted.values, y_true = admission_train$chance_of_admit) # nolint

admission_test$chance_admit_predict <- round(predict(object = model_admission, newdata = admission_test),2) # nolint

MSE(y_pred = admission_test$chance_admit_predict, y_true = admission_test$chance_of_admit) # nolint

RMSE(y_pred = admission_test$chance_admit_predict, y_true = admission_test$chance_of_admit) # nolint

