--Step 1: Create Catalog
CREATE CATALOG If NOT EXISTS electronics;
--Step 2: Create a Schema
CREATE SCHEMA If NOT EXISTS electronics.product;
--Step 3: Create a table
CREATE TABLE IF NOT EXISTS electronics.product.price (product_id INT, product_name STRING, price DECIMAL(10,2));
--Step 4: Insert data into the table
INSERT INTO electronics.product.price VALUES (1, 'Laptop', 1200), (2, 'phone', 800), (3, 'keyboard', 45.00), (4, 'Monitor', 300), (5, 'Mouse', 25.00)
--Step 5: check the table
SELECT *
FROM electronics.product.price;
--Question 1: Classify each product by price into the three tiers below
SELECT Product_name, Price, 
CASE 
WHEN price > 1000 THEN 'EXPENSIVE'
WHEN price BETWEEN 100 AND 1000 THEN 'MIDRANGE'
WHEN price < 100 THEN 'BUDGET'
END AS Price_Tier
FROM electronics.product.price
