# Analysis-of-Real-Estate-Property-Management-Using-SQL-and-Power-BI
**Status:** Ongoing 

This repository features United States of America real estate listings analysis. It includes data cleaning and analysis using SQL, as well as interactive visualization through Power BI.

# Overview
1. Introduction
2. Objectives
3. Preparation
4. Data Preparation
5. Visualization
6. Analysis
7. Conclusion

## 1. Introduction

## 2. Objectives
The objectives are
1.Can we predict housing prices based on the features?
2. How are housing price and location attributes correlated?
3. What is the overall picture of the USA housing prices w.r.t. locations?
4. Do house attributes (bedroom, bathroom count) strongly correlate with the price? Are there any hidden patterns?

## 3. Preparation

**_3.1 Dataset_**
The USA real estate dataset is available on Kaggle.

*S*

In this project, the dataset contains records on real state in the United States of America. It provides comprehensive information on the housing properties such as
- location, description
- price of the building,
- number of bedrooms,
- property size in hectares,
- number of floors,
- waterfront status,
- the condition and
- grade of the building, and
- the year the building was constructed and, if applicable, renovated.

## Data Preparation
The data preparation phase began by importing the housing data, an Excel file, into a SQL database. Several steps were conducted to ensure the suitability of the data for further processing and analysis. The process started by searching for duplicates and subsequently eliminated in a newly created table while preserving the original dataset as a backup. Removing unnecessary columns were also executed. In addressing the data constraints problem aside from the duplicates, the accuracy of the data type was also verified and ensured the data fell within the appropriate range. Now, we proceeded into looking for text and categorical data problems like inconsistent categories and formatting, length violation for text data and failure to adhere to proper naming conventions.

*<p align="center"> ![Data Loaded in SQL Server](https://github.com/macababbadcherry/Analysis-of-Real-Estate-Property-Management-Using-SQL-and-Power-BI/assets/148540172/d9974921-2950-404c-af62-bf18cdf69e12) Figure 1: Data Loaded in SQL Server</p>*

Data Preparation: [Housing_DataPrep.sql](https://github.com/macababbadcherry/Analysis-of-Real-Estate-Property-Management-Using-SQL-and-Power-BI/blob/main/Housing_DataPrep.sql)
