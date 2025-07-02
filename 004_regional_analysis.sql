--REGIONAL ANALYSIS
--Sales by city 

SELECT city.city_name, ROUND(SUM(sale.quantity * product.price),2) AS total_sales 
FROM sale
JOIN product
ON product.product_id = sale.product_id
JOIN customer
ON customer.customer_id = sale.customer_id
JOIN city
ON city.city_id = customer.city_id
GROUP BY city_name
ORDER BY total_sales DESC;

--Average transaction value per city 
SELECT city.city_name,
ROUND(SUM(sale.quantity * product.price)/COUNT(DISTINCT sale.sales_id),2) AS avg_transaction
FROM sale
JOIN product
ON product.product_id = sale.product_id
JOIN customer
ON customer.customer_id = sale.customer_id
JOIN city
ON city.city_id = customer.city_id
GROUP BY city_name
ORDER BY avg_transaction DESC;