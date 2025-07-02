# 🛒 Grocery Sales - Database Analysis - SQL Project

This project analyzes retail grocery sales using dataset sourced from Kaggle. The analysis is conducted using **PostgreSQL** and **Excel**. The goal is to explore key product, regional, employee, and time-based performance metrics.

---

## 📦 Data Source

The dataset for this project was sourced from 
[🔗 Kaggle](https://www.kaggle.com/datasets/andrexibiza/grocery-sales-dataset/data)  
It consists of **7 interrelated CSV files**, which represent:
- Customer
- Sale
- Employee
- Product
- Category
- City
- Country

---

## 🛠 Tools Used

- **PostgreSQL** – for database schema creation, importing CSV files, and SQL-based analysis  
- **Excel** – for cleaning problematic values before importing to PostgreSQL

---

## 🔄 Data Preparation & Cleaning

1. **Table creation** in PostgreSQL with specified columns and constraints (e.g., primary keys, data types).
2. **CSV import**, during which several issues were encountered and solved:

### ✅ Issues and Fixes

- **country.csv** – contained invalid country codes → column `country_code` was dropped.
- **product.csv** – `product_name` included problematic double quotes → replaced in Excel with apostrophes (`'`) to enable import.
- **sale.csv** – contained duplicate `sales_id` values → replaced with `SERIAL` data type to ensure unique primary keys.

---

## 🎯 Analysis Focus Areas

### 📦 Product Metrics
- Top 10 best-selling products by revenue  
- Top categories by sales  


### 🧑‍💼 Employee Metrics
- Current employee count
- Number of unique customers served by each employee 

### 🗺️ Regional Metrics
- Sales by city 
- Average transaction value per city

### 🕒 Time-Based Metrics
- **Monthly sales trend** – aggregated by month
- **Sales by weekday** – which days perform best
- **Sales by hour of day** – hourly customer purchasing behavior

---

## 🧠 SQL Concepts Used

This project helped strengthen my understanding of key SQL topics such as:

- `CREATE TABLE` with `PRIMARY KEY` and `SERIAL`
- `ALTER TABLE` to modify data types
- `COPY` and `\copy` for importing CSV files
- `JOIN` (INNER JOIN) across multiple tables
- `GROUP BY` and aggregate functions: `SUM()`, `AVG()`, `COUNT()`
- `ROUND()` for rounding decimals
- `DISTINCT` for unique values
- Date and time extraction: `EXTRACT()` and `TO_CHAR()` for weekday and hour analysis
- `ORDER BY` with aliases
- Filtering with `WHERE` (e.g., excluding `NULL` values)

---

## 💬 Challenges & Learnings

This was the **first time I worked with 7 different related tables** in a single project.

- At first, it felt overwhelming, especially navigating all the relationships between cities, customers, employees, and products.
- But once I understood how the tables connected, writing **complex SQL joins** became both fun and rewarding.
- I learned to troubleshoot real-world data issues such as import errors, inconsistent formats, and primary key violations.
- My **SQL confidence grew significantly** as I practiced optimizing queries, building reusable logic, and analyzing the data from multiple business perspectives.

This project showed me how rewarding it is to **solve real business questions using clean, structured analysis** — and I’m excited to keep learning, tackle even more advanced challenges, and grow in my data analyst journey.

If you're viewing this project as a potential employer, I’d appreciate your feedback — and even more so the opportunity to continue growing professionally.


---

## 📌 Author

Created by Ivana Némethová  
Email **i.nemethova@hotmail.sk**
LinkedIn [Ivana Némethová](https://www.linkedin.com/in/ivana-nemethova/)