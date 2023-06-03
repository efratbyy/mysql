-- SQL SCRIPT:

-- CREATE Database:
CREATE DATABASE IF NOT EXISTS Lec1;

-- use the new database
USE Lec1;

-- CREATE Tables:
CREATE TABLE IF NOT EXISTS Students(StudentID INTEGER, FullName VARCHAR(20));

DROP DATABASE IF EXISTS Lec1;
CREATE DATABASE IF NOT EXISTS Lec1;

-- use the new database:
USE Lec1;

DROP TABLE IF EXISTS Students;

-- CREATE Tables:
CREATE TABLE IF NOT EXISTS Students(StudentID INTEGER, FullName VARCHAR(20));

INSERT INTO Students(StudentID, FullName)
VALUES(1, 'Dave'), (2, 'Mike');

-- Show the stydents:
SELECT * FROM Students ORDER BY FullName ASC;

SELECT * FROM Customers WHERE Country = 'Aaustria' ORDER BY Country ASC, City DESC;

-- Distinct: סינון כפילויות

-- שעורי בית:
SELECT * FROM Employess ORDER BY LastName ASC;

SELECT * FROM Employess ORDER BY BirthDate ASC;

SELECT * FROM Products WHERE ProductName LIKE "C%";

SELECT * FROM Products WHERE CategoryID = 2;

SELECT * FROM Orders WHERE EmploueeID = 1;

SELECT * FROM Employess WHERE Notes LIKE '%French%';

SELECT CustomerName, FirstName, LastName, ShipperName, ProductName, Price, Quantity
FROM Orders
JOIN OrderDetails USING(OrderId)
JOIN Products USING(ProductId)
JOIN Customers USING(CustomerID)
JOIN Employees USING(EmployeeID)
JOIN Shippers USING(ShipperID)
WHERE OrderId = 10260

