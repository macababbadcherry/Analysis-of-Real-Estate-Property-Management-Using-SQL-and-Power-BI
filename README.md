# Analysis-of-Real-Estate-Property-Management-Using-SQL-and-Power-BI
**Status:** Ongoing 

This repository features the real estate property management analysis. It includes data cleaning and analysis using SQL, as well as interactive visualization through Power BI.


## Dataset
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

![Data Loaded in SQL Server](https://github.com/macababbadcherry/Analysis-of-Real-Estate-Property-Management-Using-SQL-and-Power-BI/assets/148540172/d9974921-2950-404c-af62-bf18cdf69e12)


Data Cleaning: [Housing_DataPrep.sql](https://github.com/macababbadcherry/Analysis-of-Real-Estate-Property-Management-Using-SQL-and-Power-BI/blob/main/Housing_DataPrep.sql)
