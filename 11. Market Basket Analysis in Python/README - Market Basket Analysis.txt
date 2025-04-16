# Analyzing Frequently Purchased Telecom Items using Market Basket Analysis

## Introduction
The goal of market basket analysis is to help telecom companies identify associations between frequently purchased items, providing key insights into customer behavior and guiding marketing strategies. 
By analyzing historical transaction data, we can deliver data-driven recommendations for product placement and optimize marketing campaigns for items often bought together, ultimately driving sales growth.

## Research Question
What marketing insights can be gained from using market basket analysis to identify which telecom items were most frequently purchased together? 

## Technologies Used
- Python (pandas, numpy, mlxtend)
- Jupyter Notebook 

## Data Sources
The data used in this project comes from the [Kaggle Sales Dataset](https://www.kaggle.com/datasets).

## Usage
1. Data preparation
2. Encoding data with TransactionEncoder
3. Apriori algorithm
4. Association rules
5. Unsupervised machine learning (market basket analysis)

## Results
With a total of 7,501 transactions, a support value of 5-6% translates to approximately 375 to 450 transactions in which the associated items are purchased together. 
This represents a substantial number of occurrences, highlighting a significant pattern of co-purchases. 
When applying the lift metric, all three rules demonstrated a strong association, with lift values of approximately 2, indicating that the two items are about twice as likely to be purchased together than independently.
While the confidence metric suggests a reasonable likelihood of the 10ft iPhone Charger Cable 2 Pack, FEIYOLD Blue Light Blocking Glasses, and SanDisk Ultra 64GB card being bought alongside a Dust-Off Compressed Gas 2 pack, the confidence values remain below 50%. 
This indicates that the correlation is not particularly strong.

Given the dimensionality of 7,501 transactions and 119 unique items, a 5-6% support value is quite significant. 
This indicates that approximately 375 to 450 transactions involve the VIVO Dual LCD Monitor Desk Mount and HP 62 Ink being purchased together with a Dust-Off Compressed Gas 2 pack. 
Such a strong association presents valuable opportunities for targeted marketing strategies, including cross-selling and bundling to enhance sales growth.
In addition, the lift metric suggests that marketing teams should consider placing frequently purchased pairs, such as the VIVO Dual LCD Monitor Desk Mount, SanDisk Ultra 64GB card, and FEIYOLD Blue Light Blocking Glasses, near each other in-store. 
This strategic placement can further optimize sales by leveraging the insights gained from market basket analysis. 



