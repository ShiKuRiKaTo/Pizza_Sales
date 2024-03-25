--Q1 Total Revenue
Select Sum(total_price) as Total_Revenue From pizza_sales

--Q2 Average value
Select Sum(total_price)/Count(Distinct order_id) as Average_Order_Value From pizza_sales

--Q3 Total Pizzas Sold
Select Sum(quantity) as Total_Pizzas_Sold From pizza_sales

--Q4 Total Orders
Select Count(Distinct order_id) as Total_Orders From pizza_sales

--Q5 Average Pizza Per Order
Select Count(quantity)/Count( Distinct order_id) as Avg_Pizza_Sale From pizza_sales 

--Q6 Daily Trends for Total Orders 
Select DATENAME(DW, order_date) as Order_Day, COUNT(Distinct order_id) as Total_Orders
From pizza_sales
Group By DATENAME(DW, order_date)
Order by COUNT(Distinct order_id)

--Q7 Monthly Trends for Total Orders 
Select DATENAME(MONTH, order_date) as Month, COUNT(Distinct order_id) as Total_Orders
From pizza_sales
Group By DATENAME(MONTH, order_date)
Order By Total_Orders DESC

--Q8 Sales Percentage According to Category
Select pizza_category, Sum(total_price)*100 / (Select Sum(total_price) From pizza_sales) as Category_Percent 
From pizza_sales
Group By pizza_category

--Q9 Sales Percentage According to Pizza Size
Select pizza_size, Sum(total_price)*100 / (Select Sum(total_price) From pizza_sales) as Category_Percent 
From pizza_sales
Group By pizza_size

--Q10 Total Pizza Sold By Category
Select pizza_category as Category, Sum(quantity) as Total_Sold 
From pizza_sales
Group By pizza_category

--Q11 Top Best Pizzas Revenue ,Quantity and Orders
Select pizza_name as Pizza_Name, Sum(quantity) as Quantity, Sum(total_price) as Revenue, Count(Distinct order_id) as Orders
From pizza_sales
Group By pizza_name

--Q12 Top 5 Best Pizzas Revenue 
Select Top 5 pizza_name as Pizza_Name,  Sum(total_price) as Revenue
From pizza_sales
Group By pizza_name
Order By Revenue Desc

--Q13 Bottom 5 Best Pizzas Revenue 
Select Top 5 pizza_name as Pizza_Name,  Sum(total_price) as Revenue
From pizza_sales
Group By pizza_name
Order By Revenue 
 

 


Select * from pizza_sales
Select Sum(total_price)*100 / (Select Sum(total_price) from pizza_sales)from pizza_sales
