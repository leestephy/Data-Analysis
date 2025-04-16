# Predicting Hospital Length of Stay Using Random Forest Regression

## Introduction
This project involves medical sales data using Python to generate insights and reports on patient length of stay.

## Research Question
How accurately can we predict the length of hospital stay based on patient demographic information and medical conditions using Random Forest Regression?

## Technologies Used
- Python (pandas, numpy, matplotlib, seaborn, sklearn)
- Jupyter Notebook

## Data Source
For this analysis, I am using a dataset that contains various features related to patient demographics and medical history.
File name: medical_clean.csv

## Usage
1. Data preprocessing
2. Feature selection using 'feature_importances' 
3. Exploratory data analysis (EDA)
3. Splitting the data using 'train_test_split' from `sklearn.model_selection’, with 80% allocated to training and 20% to testing
4. Model optimization using GridSearchCV and hyperparameter tuning

## Results
Despite Random Forest Regression's reputation for handling imbalanced data effectively, improving accuracy, and reducing variance, hypertuning the model still resulted in poor performance. 
Consequently, the ensemble method did not achieve the desired outcome of accurately predicting patient length of stay. 
The negative R-squared value and negative zero accuracy score, along with a high MSE score of 695, further highlight the model's deficiencies. 

## Limitation
The medical data is unbalanced which may account for the algorithm's poor performance of the algorithm. 
Specifically, out of 10,000 observations, there were 6,331 instances of patients not being readmitted and 3,669 instances of patients being readmitted. 
This imbalance can skew the algorithm's predictions.