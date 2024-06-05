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


◾ 📌 **Top 5 Countries by Sales.**<br>
 
◾ 📌 **Top 5 Products by Sales.**<br>
  
◾ 📌 **Top 10 Countries by unique customers count.**<br>

◾ 📌 **Year on Year Sales Growth.**<br> 

◾ 📌 **Cumulative sum of sales by month for each year.**<br>

◾ 📌 **Count of repeat customers for each year.**<br>

## Recommendations

  > 1. Our insights suggests that we’re doing exceptionally well in United Kingdom country with respect to sales but there are few more countries where potential growth is observed like EIRE, Netherlands, Germany and France. So we should focus on expansion of business in other countries as well.


  > 2. In the year 2010, there was significant sales growth but it was reduced in 2011. For an exponential growth, our sales should show positive growth year on year so we need to figure out the factors affecting the sales.

>   3. With respect to previous point, we have one more insight which shows cumulative sum by months which can help us to identify which month contributed the most and least in the year 2010.

>   4. One key thing to note is we’re maintaining good amount of repeat customers which shows customer’s trust on the company.






