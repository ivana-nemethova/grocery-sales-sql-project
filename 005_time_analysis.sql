--TIME ANALYSIS
--sales by month of year 

SELECT 
EXTRACT (MONTH FROM sale.sales_date) AS sale_month,
ROUND(SUM(sale.quantity * product.price),2) AS total_sales
FROM sale
JOIN product
ON sale.product_id = product.product_id
WHERE sale.sales_date IS NOT NULL
GROUP BY sale_month
ORDER BY sale_month;

--sales by day of week
SELECT EXTRACT(DOW FROM sale.sales_date) AS day_number,
TO_CHAR(sale.sales_date, 'Day') AS day_of_week,
ROUND(SUM(sale.quantity * product.price),2) AS total_sales
FROM sale
JOIN product
ON sale.product_id = product.product_id
WHERE sale.sales_date IS NOT NULL
GROUP BY day_number, day_of_week
ORDER BY total_sales DESC;


--sales by hour of day 

SELECT 
EXTRACT (HOUR FROM sale.sales_date) AS sale_hour,
ROUND(SUM(sale.quantity * product.price),2) AS total_sales
FROM sale
JOIN product
ON sale.product_id = product.product_id
WHERE sale.sales_date IS NOT NULL
GROUP BY sale_hour
ORDER BY sale_hour;