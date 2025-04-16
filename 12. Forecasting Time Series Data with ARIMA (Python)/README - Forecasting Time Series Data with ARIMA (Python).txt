# Forecasting Revenue with Time Series ARIMA Modeling

## Introduction
The goal of this time series analysis is to analyze the historical patterns and trends in telecom revenue data and to forecast future revenue.

## Research Question
How can ARIMA time series forecasting be applied to generate reliable short-term revenue predictions for telecom companies using two years of historical revenue data?

## Technologies Used
- Python (pandas, numpy, matplotlib, seaborn, statsmodels, sklearn, scipy, auto_arima)
- Jupyter Notebook 

## Data Sources
teleco_time_series.csv

## Usage
1. Data cleaning
2. Data visualization
3. Time Step Formatting
4. Stationarity Check using the Augmented Dickey-Fuller (ADF) test
5. Splitting the data
6. Time Series Decomposition
7. Autocorrelation function (ACF) and partial autocorrelation function (PACF)
8. Power Spectral Density
9. Time series residuals
10. ARIMA modeling
11. Forecasting

## Results
Prediction interval of the forecast:
The 3-month revenue forecast, based on the predicted mean, shows a stable projected trend represented by the straight horizontal line. 
This indicates the model’s expectation that revenue will remain steady over the forecast period. 
However, the widening 95% confidence interval, shown by the shaded gray area, reflects increasing uncertainty as the forecast extends further into the future. 
This interval suggests that while the central forecast is stable, there is a reasonable chance for revenue variability, either above or below the projected mean. 
This widening range highlights the forecast's limitations for long-term planning and underscores the importance of preparing for potential fluctuations within this interval.

Forecast Length Justification:
A 90-day forecast is suitable for telecom revenue data, given the 731 days of historical daily data. 
Telecom revenues often follow short-term patterns like monthly billing cycles, and companies typically plan on a quarterly basis. 
A 90-day forecast aligns with this planning and captures these trends effectively. 
Forecasts beyond 90 days become less accurate due to increasing uncertainty, making this timeframe ideal for reliable, actionable predictions.