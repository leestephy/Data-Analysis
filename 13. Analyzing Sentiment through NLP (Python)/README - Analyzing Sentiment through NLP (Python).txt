# Sentiment Analysis using Neural Networks 

## Introduction
A neural network model using Bidirectional Long Short-Term Memory (Bi-LSTM) will be developed to classify the sentiment, positive or negative, of reviews from the combined IMDb, Amazon, and Yelp data sets. 
The objectives are to preprocess the reviews using NLP techniques like tokenization, stopword removal, and lemmatization, convert the text into numerical data using word embeddings for input to the BiLSTM, optimize the model, and evaluate its performance to ensure accurate and reliable sentiment predictions.

## Research Question
How accurately can a neural network, using NLP techniques and a prescribed method such as a Bidirectional LSTM, predict sentiment from combined IMDb, Amazon, and Yelp reviews?

## Technologies Used
- Python (pandas, numpy, matplotlib, seaborn, sklearn, nltk, tensorflow)
- Jupyter Notebook 

## Data Sources
UCI Labeled Sentences Data Sets
The sentences come from 3 different websites: imdb, amazon, and yelp

## Usage
1. Data cleaning
2. Data exploration
3. Tokenization
4. Remove stopwords
5. Lemmantization
6. Padding
7. Categorizing sentiment
8. Splitting the data
9. Bidirectional long short-term memory (Bi-LSTM) model
10. Network Architecture
11. Hyperparameters

## Results
The predictive accuracy of the model on the test set is roughly 80%, indicating that the model correctly classified the sentiment of 80% of the reviews in the unseen test data. This result demonstrates that the Bidirectional Long Short-Term Memory (Bi-LSTM) network effectively captured the relationships and context within the review text and generalized well to new data. 
While there is room for further optimization, the model provides a strong foundation for sentiment analysis and meets the primary objectives of the analysis by delivering reliable and accurate predictions.