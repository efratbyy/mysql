DROP DATABASE IF EXISTS lec3;
CREATE DATABASE IF NOT EXISTS lec3;

USE lec3;

 
CREATE TABLE products(
	product_id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT, 
	product_name VARCHAR(20),
    price DECIMAL(5,2) DEFAULT 10, 
    created DATETIME DEFAULT now(),
    last_update DATETIME DEFAULT now() ON UPDATE now()
);

INSERT INTO products(product_name) 
VALUES ('phone case');

SELECT * FROM products;

UPDATE products
SET price = 10.99
WHERE price = 10;

SELECT * FROM products;