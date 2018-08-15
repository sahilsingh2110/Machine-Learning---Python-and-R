dataset = read.csv('50_Startups.csv')
dataset

#taking care of missing dataset

#dataset$Age = ifelse(is.na(dataset$Age),ave(dataset$Age, FUN= function(x) mean(x,na.rm = TRUE)),dataset$Age)
#dataset$Salary = ifelse(is.na(dataset$Salary),ave(dataset$Salary, FUN= function(x) mean(x,na.rm = TRUE)),dataset$Salary)

# Encoding categorical data
dataset$State = factor(dataset$State, levels = c("New York","California", "Florida" ), labels = c(1,2,3) )


# Splitting the dataset into  the Training set n Test set
#install.packages('caTools')
library(caTools)
set.seed(123)
split = sample.split(dataset$Profit, SplitRatio = 0.8  )
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)

# Feature Scaling

# training_set[, 2:3] = scale(training_set[, 2:3])
# test_set[, 2:3] = scale(test_set[, 2:3])

# Fitting Multiple Linear Regression to the Training set
regressor = lm(formula = dataset$Profit ~ dataset$R.D.Spend + dataset$Administration+dataset$Marketing.Spend+dataset$State, data = training_set)

# Predicting the Test set results
y_pred = predict(regressor, newdata = test_set)

# Building the optimal model using Backward Elimination

regressor = lm(formula = dataset$Profit ~ dataset$R.D.Spend + dataset$Administration+dataset$Marketing.Spend+dataset$State, data = dataset)
summary(regressor)

regressor = lm(formula = dataset$Profit ~ dataset$R.D.Spend + dataset$Administration+dataset$Marketing.Spend, data = dataset)
summary(regressor)

regressor = lm(formula = dataset$Profit ~ dataset$R.D.Spend+dataset$Marketing.Spend, data = dataset)
summary(regressor)

#final model has R&D Spend as the most statistically significant independent variable
regressor = lm(formula = dataset$Profit ~ dataset$R.D.Spend, data = dataset)
summary(regressor)