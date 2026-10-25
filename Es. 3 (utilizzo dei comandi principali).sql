-- Active: 1792919903720@@127.0.0.1@3306@matteo's_shop

-- CREATE DATABASE: Creates a new database named "Matteo_shop"
CREATE DATABASE IF NOT EXISTS `Matteo's_shop`;

-- USE: Selects the database to work with
USE `Matteo's_shop`;

-- CREATE TABLE: Defines structure with columns, data types, and constraints
CREATE TABLE products (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    price DECIMAL(5,2),
    category VARCHAR(20)
);

-- FOREIGN KEY: Creates a relationship between tables (product_id references products.id)
CREATE TABLE orders (
    id INT PRIMARY KEY AUTO_INCREMENT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (product_id) REFERENCES products(id)
);

-- INSERT: Adds new rows of data into the table
INSERT INTO products (name, price, category) VALUES
("Laptop", 899.99, "Electronics"),
("Mouse", 25.50, "Electronics"),
("Chair", 150.00, "Furniture"),
("Lamp", 45.00, "Furniture");

INSERT INTO orders (product_id, quantity) VALUES
(1, 2), (2, 5), (3, 1);

-- SELECT *: Retrieves all columns from the table
SELECT * FROM products;

-- WHERE: Filters results based on conditions (AND combines multiple conditions)
-- ORDER BY: Sorts results (DESC=descending, ASC=ascending)
SELECT name, price 
FROM products 
WHERE price>20 AND category="Electronics"
ORDER BY price DESC;

SELECT name, price 
FROM products 
WHERE price>50 AND category="Furniture"
ORDER BY price DESC;

SELECT *
FROM products p
INNER JOIN orders o ON p.id=o.product_id;

-- INNER JOIN: Combines rows from two tables based on a matching condition
SELECT p.name, o.quantity
FROM products p
INNER JOIN orders o ON p.id=o.product_id;

-- GROUP BY: Groups rows with same values together
-- HAVING: Filters groups (like WHERE but for aggregated data)
-- COUNT/AVG/MAX/MIN/SUM: Aggregate functions that calculate statistics
SELECT category, 
       COUNT(*) AS total,
       AVG(price) AS average,
       MAX(price) AS maximum,
       MIN(price) AS minimum,
       SUM(price) AS sum
FROM products
GROUP BY category
HAVING AVG(price)>50;

SELECT name, 
       COUNT(*) AS total,
       AVG(price) AS average,
       MAX(price) AS maximum,
       MIN(price) AS minimum,
       SUM(price) AS sum
FROM products
GROUP BY name
HAVING AVG(price)>50;

-- DISTINCT: Returns only unique values (removes duplicates)
SELECT DISTINCT category FROM products;

-- LIKE: Pattern matching (%=any characters, _=single character)
SELECT * FROM products WHERE name LIKE "L%";

-- BETWEEN: Selects values within a range (inclusive)
SELECT * FROM products WHERE price BETWEEN 40 AND 200;

-- IN: Checks if value matches any in a list
SELECT * FROM products WHERE category IN ("Electronics", "Furniture");

-- LIMIT: Restricts the number of rows returned
SELECT * FROM products ORDER BY price DESC LIMIT 2;

-- UPDATE: Modifies existing data in the table
UPDATE products 
SET price=price * 0.9 
WHERE category="Electronics";

-- ALTER TABLE: Modifies table structure (adds, removes, or changes columns)
ALTER TABLE products ADD COLUMN stock INT DEFAULT 0;

-- DELETE: Removes rows that match the condition
DELETE FROM products WHERE price<30;

-- DROP TABLE: Completely removes a table (IF EXISTS prevents error if table doesn"t exist)
DROP TABLE IF EXISTS orders;

-- DROP DATABASE: Completely removes a database and all its tables
DROP DATABASE IF EXISTS `Matteo's_shop`;