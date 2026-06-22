# User Behaviour Analysis on Planning Alerts

This project applies Exploratory Data Analysis (EDA), Machine Learning (Decision Trees), and Clustering Techniques to understand user behaviour on the PlanningAlerts.ie platform. The objective is to improve user engagement, conversion rates, and retention through data-driven insights.

## Key Techniques Used
Exploratory Data Analysis (EDA), Clickstream Analysis, Decision Tree Classification (Machine Learning), Hierarchical Clustering, Customer Segmentation, Bounce Rate and Funnel Analysis, Data Visualisation (ggplot2, plotly)

## Tools and Technologies
R Programming, Tidyverse (dplyr, ggplot2, tidyr), rpart (Decision Trees), cluster (Hierarchical Clustering), plotly (Interactive Visualisations), kableExtra (Reporting)

## Machine Learning Component

### 1. Predictive Model (Decision Tree)
- Predicts user conversion behaviour
- Key features: LOR, spend, age
- Accuracy:
  - Training: 62%
  - Testing: 51%

### 2. Clustering Model
- Segmented users into 3 behavioural clusters
- Mean silhouette score: 0.255 (25.5%).
- Identified distinct preference groups for products (D1, D3, D5)

## Key Outcomes

-Decision Tree achieved 62% training accuracy and 51% test accuracy.
-Pruned model improved test accuracy to 52%.
-Three customer segments identified via clustering (silhouette score: 25.5%).
-Segmentation supports targeted marketing and ~5% potential revenue improvement.

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

