--PRODUCT ANALYSIS
--top 10 products by their sales 

SELECT product.product_id, product.product_name,
ROUND(SUM (sale.quantity * product.price),2) AS total_sales
FROM product
JOIN sale
ON product.product_id = sale.product_id
GROUP BY product.product_id, product.product_name
ORDER BY ROUND(SUM (sale.quantity * product.price),2) DESC
LIMIT 10;

--categories by sales 

SELECT category.category_id, category.category_name, 
ROUND(SUM(sale.quantity * product.price),2) AS total_sales
FROM sale
JOIN product
ON sale.product_id = product.product_id
JOIN category
ON product.category_id = category.category_id
GROUP BY category.category_id, category.category_name
ORDER BY total_sales DESC;