-- Created Database "SalesDataAnalysis"
-- Created and imported the data from the Csv file as sales_data

-- Select all data form the table
select * from sales_data

-- Total Orders

select COUNT(Distinct ORDERNUMBER) from sales_data

-- Total sales by country

select country, sum(round (sales,2)) as Sales from sales_data
group by country
order by 2 desc

-- Total sales by Product Code and QTY Sold

select  PRODUCTCODE, sum(QUANTITYORDERED) AS 'Product Qty Ordered', sum(round (sales,2)) as Sales from sales_data
group by PRODUCTCODE
order by 2 desc

-- Total sales by Year 

select  YEAR_ID as 'Year', sum(round (sales,2)) as Sales 
from sales_data
group by YEAR_ID

-- AVG QTY Sold and Sales per Product

select  Distinct ORDERNUMBER, sum(round (sales,2)) as Sales, AVG(QUANTITYORDERED) as 'AVG QTY Sold' from sales_data
group by ORDERNUMBER
order by 2 desc

