# Predicting the most important Business Unit(department) for a startup and pick one of the startups for VC funding

#### Handling and Preprocessing your dataset before analysis and visualization

In the following files, you’ll find useful code in R[filename->data preprocess.R] and Python[filename->data preprocess.py] to preprocess your dataset. These files include preprocessing steps as follows: -
1.	Reading the dataset (csv format)
2.	Taking care of missing values
3.	Handling of categorical data(encoding)
4.	Feature scaling to prevent variable bias

The dataset provides us with expense numbers(of different BUs ) of startups across US. The goal was to predict the most important BU for a startup where the expenses would result into profitablity. 
#### Snapshot of the dataset
![snapshot_startups](https://user-images.githubusercontent.com/40129527/44245921-6c1a2d80-a1a9-11e8-8a53-f5bd52653849.JPG)
## Utilized multiple linear regression with backward elimination technique
The approach was to first figure out the most important variable(the business unit), using backward elimination to build the best model to understand which variable affects profit of the startups. Based on the result, pick the startup to invest.
#### Result

![multilinear_result_summary](https://user-images.githubusercontent.com/40129527/44245697-09746200-a1a8-11e8-8fb1-75e8375ee98a.JPG)

R&D unit and Marketing were found to be most strongly correlated with profits for these startups. The start-up with highest R&D and marketing spend was pciked for VC funding as it was predicted to be most successful. The R-squared value for the model was 0.948.
