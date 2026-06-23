# User Behaviour Analysis on Planning Alerts

A data analytics project focused on understanding user behaviour on the PlanningAlerts.ie platform using Exploratory Data Analysis (EDA), Machine Learning techniques, and Clustering. The system is designed to improve user engagement, conversion rates, and retention through data-driven segmentation and insights.

This project was developed as part of an analytics initiative using R programming for statistical analysis, modelling, and visualization. 

## Methodology
This project follows a structured analytics pipeline starting from raw data exploration to predictive modelling and segmentation.

### 1. Data Preparation & Cleaning
Handled missing values and inconsistent records, standardized variables for analysis, and created derived features to support behavioural insights and improve the quality of downstream analysis and modelling.

### 2. Exploratory Data Analysis (EDA)
Conducted exploratory data analysis to examine user clickstream behaviour and interaction patterns, identify trends in engagement, bounce rates, and conversions, and perform funnel analysis to uncover key drop-off points in the user journey.

### 3. Predictive Modelling (Decision Tree)
Built a Decision Tree classification model to predict user conversion behaviour based on key attributes such as age, spending patterns, and length of relationship (LOR). The model identified the factors most strongly associated with user conversions and was evaluated using training and test datasets.

### 4. Clustering & Segmentation
Applied Hierarchical Clustering to group users with similar behavioural characteristics and engagement patterns. The analysis identified distinct user segments, enabling a better understanding of customer preferences and supporting targeted marketing and retention strategies.

Tools & Technologies
R Programming, Tidyverse (dplyr, ggplot2, tidyr), rpart (Decision Trees), cluster (Hierarchical Clustering), plotly (Interactive Visualisations), data preprocessing, feature engineering, statistical analysis

## Key Outcomes

- Decision Tree achieved 62% training accuracy and 51% test accuracy. 
- Pruned model improved test accuracy to 52%. 
- Three customer segments identified via clustering (silhouette score: 25.5%). 
- Segmentation supports targeted marketing and ~5% potential revenue improvement.

## The full analysis report can be viewed here:  
https://rpubs.com/SushmaMahesh/1246601

## Project Structure

planning-alerts-eda/
│
├── README.md
├── index.qmd
├── planning-alerts-eda.Rproj
│
├── data/
│   ├── raw/
│   │   ├── planning_alerts_data.csv
│   │   ├── energy_drinks.csv
│   │   └── sub_training.csv
│   │   └── sub_testing.csv
│   │
│   └── processed/
│
├── scripts/
│   ├── data_cleaning.R
│   ├── eda_analysis.R
│   ├── clustering_analysis.R
│   ├── decision_tree_model.R
│
├── outputs/
│   ├── plots/
│   ├── tables/
│   ├── models/
│
├── reports/
│   ├── planning_alerts_report.html
│   ├── energy_clustering_report.html
│
├── images/
│   ├── dashboard_screenshots/
│
└── docs/
    ├── methodology.md

