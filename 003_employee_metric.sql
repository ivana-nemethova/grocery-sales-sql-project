--EMPLOYEES
--how many employees do we currently have?

SELECT COUNT(*) FROM employee;


--how many customers did each employee serve? (unique customers)

SELECT employee.employee_id, 
employee.first_name || ' ' || employee.last_name AS employee_name, 
COUNT(DISTINCT sale.customer_id) AS customers_served
FROM employee
JOIN sale
ON employee.employee_id = sale.sales_person_id
GROUP BY employee.employee_id, employee.first_name, employee.last_name
ORDER BY customers_served DESC;