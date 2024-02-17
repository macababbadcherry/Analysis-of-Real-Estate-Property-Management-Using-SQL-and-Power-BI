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
* Can we predict housing prices based on the features?
* How are housing price and location attributes correlated?
* What is the overall picture of the USA housing prices w.r.t. locations?
* Do house attributes (bedroom, bathroom count) strongly correlate with the price? Are there any hidden patterns?
*
## 3. Preparation

**_3.1 Dataset_** <br>
The USA real estate dataset is available on Kaggle. The dataset contains records on real estate in the United States of America. It provides comprehensive information on the housing properties such as
- status (Housing status - ready for sale or ready to build)
- bed (number of beds)
- bath (number of bathrooms)
- acre_lot (property / land size in acres)
- city (city name)
- state (state name)
- zip_code (postal code of the area)
- house_size (house area/size/living space in square feet)
- prev_sold_date (previously sold date)
- price (housing price, it is either the current listing price or recently sold price if the house is sold recently)

**_3.2 Acessibility & Sourcing_** <br>
Ahmed Shahriar Sakid published the USA real estate dataset on Kaggle, collecting data from [Realtor.com](https://www.realtor.com/research/data). Therefore, anyone utilizing this data in research, analysis, or other projects should attribute it to Realtor.com® Economic Research. If the data is used on digital properties like Github, it is recommended to include a link to their data library.

## 4. Processing
**_Importing Data into SQL_** <br>
The dataset has 1 CSV file with 10 columns containing more than 1.4 million+ entries. Hence, I used Microsoft SQL Server to import such data.
The data preparation phase began by importing the housing data, an Excel file, into a SQL database. Several steps were conducted to ensure the suitability of the data for further processing and analysis. The process started by searching for duplicates and subsequently eliminated in a newly created table while preserving the original dataset as a backup. Removing unnecessary columns were also executed. In addressing the data constraints problem aside from the duplicates, the accuracy of the data type was also verified and ensured the data fell within the appropriate range. Now, we proceeded into looking for text and categorical data problems like inconsistent categories and formatting, length violation for text data and failure to adhere to proper naming conventions.

**_Data Cleaning** <br>





*<p align="center"> ![Data Loaded in SQL Server](https://github.com/macababbadcherry/Analysis-of-Real-Estate-Property-Management-Using-SQL-and-Power-BI/assets/148540172/d9974921-2950-404c-af62-bf18cdf69e12) Figure 1: Data Loaded in SQL Server</p>*

Data Preparation: [Housing_DataPrep.sql](https://github.com/macababbadcherry/Analysis-of-Real-Estate-Property-Management-Using-SQL-and-Power-BI/blob/main/Housing_DataPrep.sql)
