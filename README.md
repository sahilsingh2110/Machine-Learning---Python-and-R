# Prediction using multiple linear, polynomial, SVR, random forest and evaluating model performance

#### Handling and Preprocessing your dataset before analysis and visualization

In the following files, you’ll find useful code in R[filename->data preprocess.R] and Python[filename->data preprocess.py] to preprocess your dataset. These files include preprocessing steps as follows: -
1.	Reading the dataset (csv format)
2.	Taking care of missing values
3.	Handling of categorical data(encoding)
4.	Feature scaling to prevent variable bias

## Predicting the most important Business Unit(department) for a startup and pick one of the startups for VC funding
#### Utilized multiple linear regression
The dataset provides us with expense numbers(of different BUs ) of startups across US. The goal was to predict the most important BU for a startup where the expenses would result into profitablity. 

The approach was to first figure out the most important variable(the business unit) that affects profit of the startups. Based on the result, pick the startup to invest.

Engineering/Research and Development unit were found to be most strongly correlated with profits for these startups.

