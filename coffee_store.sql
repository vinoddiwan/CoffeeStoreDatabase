CREATE DATABASE coffee_store;

USE DATABASE coffee_store;

-- 3 tables Customers, Order, Products
CREATE TABLE customers
(
id INT AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(30),
last_name VARCHAR(30),
gender ENUM('M', 'F'),
phone_number VARCHAR(11)
);

CREATE TABLE products
(
id INT AUTO INCREMENT PRIMARY KEY,
name VARCHAR(30),
price DECIMAL(3, 2)
)

CREATE TABLE orders(
id INT AUTO_INCREMENT PRIMARY KEY,
product_id INT,
customer_id INT,
order_time DATETIME,
FOREIGN KEY(product_id) REFERENCES products(id),
FOREIGN KEY(customer_id) REFERENCES customers(id)
);


-- Adding column to products table
ALTER TABLE products
ADD COLUMN coffee_origin VARCHAR(30);


-- Removing column to products table
ALTER TABLE products
DROP COLUMN coffee_origin;









