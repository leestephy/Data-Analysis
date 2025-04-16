# Reducing Dimensionality of Telecom Churn Data with Principal Component Analysis

## Introduction
Principal Component Analysis (PCA) is employed to reduce the number of features, isolating the most significant ones. 
This allows telecommunications companies to create more targeted marketing strategies, ultimately improving customer retention and driving long-term profitability. 

## Research Question
How does dimensionality reduction in churn data enhance decision-making and customer understanding for telecom companies?

## Technologies Used
- Python (pandas, numpy, mlxtend)
- Jupyter Notebook 

## Data Sources
churn_clean.csv

## Usage
1. Data preparation
2. Standardization
3. Principal Components
4. Scree Plot: Elbow Rule vs Kaiser Method
5. Variance 

## Results
By applying the elbow rule and retaining two principal components, only 44% of the total variance was captured, which is insufficient for effectively representing the original dataset's variance. 
In contrast, the Kaiser method retained four principal components, capturing a more favorable total variance of 73%.

