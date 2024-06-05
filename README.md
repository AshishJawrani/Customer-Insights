# Customer-Insights
This project provides some crucial insights for customers sales data over two years period.

## **Tools**:

<h5 align="left">SQL Server, Power BI & MS Excel</h5> <h5 align="left"></h5>

## Approach Used

1. **Data Wrangling:** This is the first step where inspection of data is done to make sure **NULL** values and missing values are detected and data replacement methods are used to replace, missing or **NULL** values.

> 1. Build a database
> 2. Create table and insert the data.
> 3. Select columns with null values in them. There are no null values in our database as in creating the tables, we set **NOT NULL** for each field, hence null values are filtered out.

2. **Feature Engineering:** This will help use generate some new columns from existing ones.

> 1. Add a new column named `Sales` by calculating product of Quantity and Price. This will help to analyze sales w.r.t different parameters.

> 2. Extract the Month and Year values from InvoiceDate column amd add a separate column for both.


3. **Exploratory Data Analysis (EDA):** Exploratory data analysis is done to answer the listed questions and aims of this project.

## Top insights


