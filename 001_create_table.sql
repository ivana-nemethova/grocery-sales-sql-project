DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS city;
DROP TABLE IF EXISTS country;
DROP TABLE IF EXISTS customer;
DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS product;
DROP TABLE IF EXISTS sale;

CREATE TABLE IF NOT EXISTS category (
    category_id INT,
    category_name VARCHAR(45),
    CONSTRAINT pk_category PRIMARY KEY (category_id)
);

CREATE TABLE IF NOT EXISTS country (
    country_id INT,
    country_name VARCHAR(45),
    country_code VARCHAR(2),
    CONSTRAINT pk_country PRIMARY KEY (country_id)
);

CREATE TABLE IF NOT EXISTS city (
    city_id INT,
    city_name VARCHAR(45),
    zipcode DECIMAL(5,0),
    country_id INT,
    CONSTRAINT pk_city PRIMARY KEY (city_id),
    CONSTRAINT fk_country FOREIGN KEY (country_id) REFERENCES country (country_id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS customer (
    customer_id INT,
    first_name VARCHAR(45),
    middle_initial VARCHAR(10),
    last_name VARCHAR(45),
    city_id INT,
    address VARCHAR(90),
    CONSTRAINT pk_customer PRIMARY KEY (customer_id),
    CONSTRAINT fk_city FOREIGN KEY (city_id) REFERENCES city (city_id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS employee (
    employee_id INT,
    first_name VARCHAR(45),
    middle_initial VARCHAR(10),
    last_name VARCHAR(45),
    birth_date DATE,
    gender VARCHAR(10),
    city_id INT,
    hire_date DATE,
    CONSTRAINT pk_employee PRIMARY KEY (employee_id),
    CONSTRAINT fk_city FOREIGN KEY (city_id) REFERENCES city (city_id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS product (
    product_id INT,
    product_name VARCHAR(45),
    price DECIMAL(8,4),
    category_id INT,
    class VARCHAR(15),
    modify_date DATE,
    resistant VARCHAR(15),
    is_allergic VARCHAR(20),
    vitality_days DECIMAL(5,1),
    CONSTRAINT pk_product PRIMARY KEY (product_id)
);

CREATE TABLE IF NOT EXISTS sale (
    sales_id SERIAL PRIMARY KEY,
    sales_person_id INT,
    customer_id INT,
    product_id INT,
    quantity INT,
    discount DECIMAL(10,2),
    total_price DECIMAL(10,2),
    sales_date TIMESTAMP,
    transaction_number VARCHAR(25),
    CONSTRAINT fk_employee FOREIGN KEY (sales_person_id) REFERENCES employee (employee_id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_customer FOREIGN KEY (customer_id) REFERENCES customer (customer_id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_product FOREIGN KEY (product_id) REFERENCES product (product_id)  ON DELETE CASCADE ON UPDATE CASCADE 
);



--modifications of tables 
--file country.csv contains incorrect country codes, I deleted entire column because it is unusable

ALTER TABLE country
DROP COLUMN country_code;