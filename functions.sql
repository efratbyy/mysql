USE W3Schools;
-- כמה הזמנות בתאריך נתון

SELECT COUNT(*) AS num_orders
FROM Orders
WHERE OrderDate >= '1996-07-01' AND OrderDate <= '1996-08-01';


SELECT COUNT(*) AS num_orders
FROM Orders
WHERE OrderDate NOT BETWEEN '1996-07-01' AND '1996-08-01';



-- count number of records:
SELECT COUNT(*)
FROM Customers;

-- count number of records:
SELECT COUNT(city)
FROM Customers;

-- count number of distinct cities:
SELECT COUNT(distinct city)
FROM Customers;



SELECT CONCAT(FirstName,' ', LastName) as "Full Name"
FROM Employees;


-- AVG, SUM, COUNT, MIN, MAX
SELECT MAX(Price)
FROM Products; -- 264

SELECT MIN(Price)
FROM Products; -- 3

SELECT COUNT(Price)
FROM Products; -- 77 products

SELECT SUM(Price)
FROM Products; -- 2227 sum of all product prices...

SELECT ROUND(AVG(Price))
FROM Products;


SELECT SUM(Price)/COUNT(*)
FROM Products;






SELECT  COUNT(*) num_customers_in_berlin
FROM Customers
WHERE City = 'Berlin';


SELECT SUM(quantity*price) AS total_in_1996
FROM Orders
JOIN Order_Details USING(OrderId)
JOIN Products USING(ProductId)
WHERE OrderDate LIKE "1996%";

-- upper case string --UPPER('abc')
-- lower case string --LOWER('ABC')
-- concat strings -- CONCAT('Moe', ' ', 'Green')
-- sub strings    -- 

USE sakila;


SELECT CONCAT(SUBSTRING(first_name, 1, 1), SUBSTRING(LOWER(first_name), 2)) AS firstName
FROM actor;


SELECT HEX(255), HEX(0), HEX(128)


-- 0123456789 -- 10 options
-- 0123456789abcdef -- 16 options
