-- Created Database "SalesDataAnalysis"
-- Created and imported the data from the Csv file as Sales

-- Select all data form the table
select * from Sales

-- Total Revenue
select sum(avg_price), Transaction_ID from Sales
group by Transaction_ID


select * from Sales
where CustomerID = '13047' and Transaction_ID = '16687'