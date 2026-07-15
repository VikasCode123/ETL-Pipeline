SELECT * FROM amit.sales_profit;
SELECT * FROM amit.sales_profit;

 SELECT Sales, quantity, SUM(quantity * Sales) AS total_revenue
 FROM amit.sales_profit
 GROUP BY Sales, quantity
 ORDER BY total_revenue DESC
 LIMIT 10;
 
 SELECT  DISTINCT order_ID, Country, city, SUM(Sales) as Sales_Price
 FROM amit.sales_profit
 GROUP BY order_ID, Country, city;
 
 SELECT DISTINCT `Order Date` 
FROM amit.sales_profit 
LIMIT 0, 1000;

SELECT year(Order Date) as order_year, month(order_date) as order_date,
sum(sale_price) as sales
FROM amit.sales_profit
GROUP BY year(order_date),month(order_date);



SELECT DATE_FORMAT(STR_TO_DATE(`Order Date`, '%m/%d/%Y'), '%Y%m') AS YearMonth 
FROM amit.sales_profit;
 