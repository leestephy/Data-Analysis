# Predicting Patient Readmission with K-Nearest Neighbors (KNN)

## Introduction
This project involves analyzing medical data using Python to generate insights and reports on patient demographics and medical conditions.

## Research Question
How successfully can we predict readmission with patient demographics and medical conditions using the k-nearest neighbors classification method?

## Technologies Used
- Python (pandas, numpy, matplotlib, seaborn, sklearn)
- Jupyter Notebook

## Data Source
For this analysis, I am using a dataset that contains various features related to patient demographics and medical history.
File name: medical_clean.csv

## Usage
1. Data preparation
2. Feature Selection  
3. Model training and evaluation using GridSearchCV
4. Performance metrics

## Results
The number of features were reduced from 24 to 12 variables using the feature selection method, SelectKBest. 
This feature selection approach determined the following features as key predictors: 
HighBlood
Stroke
Arthritis
BackPain
Allergic_rhinitis
Asthma
Marital_Divorced
Marital_Widowed
Gender_Female
Gender_Male
Age
Income

Although KNN accurately labeled 1,247 outcomes, the algorithm falsely predicted outcomes about 38% of the time. 
From the 20% of the data that was tested, the algorithm incorrectly classified 706 patients as not readmitted. 
Additionally, the algorithm inaccurately predicted patients were readmitted 47 times. 
As displayed in the confusion matrix, the algorithm had a total of 753 false predictions. 

## Limitation
The medical data is unbalanced which may account for the algorithm's poor performance of the algorithm. 
Specifically, out of 10,000 observations, there were 6,331 instances of patients not being readmitted and 3,669 instances of patients being readmitted. 
This imbalance can skew the algorithm's predictions.
