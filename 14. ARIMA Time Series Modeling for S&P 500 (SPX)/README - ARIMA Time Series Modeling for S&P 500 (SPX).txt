# Analyzing S&P 500 Index Performance with ARIMA Time Series Analysis

## Introduction
This analysis examines the predictability of the S&P 500’s daily closing prices using the ARIMA time-series modeling method. 
By utilizing 10 years of historical data, the study aimed to identify patterns, trends, and seasonal behaviors within the stock market. 
The primary objective was to evaluate whether ARIMA could achieve at least 90% prediction accuracy, providing insights that could support decision-making for investors and organizations.

## Research Question
To what extent can the S&P 500’s daily closing price be accurately predicted using ARIMA, a statistical time series modeling method? 

## Technologies Used
- Python (pandas, numpy, matplotlib, seaborn, statsmodels, sklearn, scipy, auto_arima)
- Jupyter Notebook

## Data Sources
The dataset contains daily open, high, low, and close prices for the S&P index, spanning all trading days from December 1, 2014, to December 1, 2024, covering a 10-year period. 
The data originates from S&P Dow Jones Indices, which gathers financial information from market exchanges.

## Usage
1. Data Cleaning/Preparation
2. Decomposed Time Series
3. Rolling Mean
4. Autocorrelation Function (ACF) and Partial Autocorrelation Function (PACF)
5. Time Series Residuals
6. auto_arima
7. ARIMA Modeling
8. Data Visualization - ARIMA model performance

## Results
The analysis showed that time series forecasting with the ARIMA model on the S&P 500 Index was ineffective in accurately predicting future closing prices based on historical trends. 
The optimized ARIMA (2, 1, 2) model produced results with a high RMSE of 1019.36 and only 58.13% of test points falling within the confidence interval, indicating limited accuracy. 
As a result, the null hypothesis was accepted, indicating that the ARIMA model was unable to achieve the desired level of prediction accuracy for the variable Close in this context. 