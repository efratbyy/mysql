USE W3Schools;

SELECT categoryName, COUNT(categoryName) AS num_products
FROM products
JOIN categories USING(categoryId)
GROUP BY categoryName;

SELECT * 
FROM Order_Details
WHERE OrderId = 10285; -- 45 + 40 + 36 = 121

SELECT OrderId, SUM(Quantity) AS Total_items, COUNT(Quantity) AS num_items
FROM Order_Details
JOIN Products USING(productID)
GROUP BY OrderId;


SELECT country, COUNT(customerId) AS num_customers
FROM Customers
GROUP BY country
ORDER BY num_customers DESC;


SELECT CategoryName, COUNT(ProductID) as total
FROM Products
JOIN Categories USING(categoryid)
GROUP BY CategoryName
ORDER BY total DESC;

SELECT CategoryName AS CategoryID, ROUND(AVG(Price), 1) AS AvaragePrice
FROM Products
JOIN Categories USING(categoryid)
GROUP BY CategoryName
ORDER BY AvaragePrice DESC;

SELECT SupplierId, Max(SupplierName) AS SupplierName, ROUND(AVG(Price),1) as AvaragePrice
FROM Products
JOIN Suppliers USING(SupplierId)
GROUP BY SupplierId
ORDER BY AvaragePrice DESC;
 

SELECT Country, City, COUNT(customerID) as total_customers
FROM Customers
GROUP BY Country, City
HAVING COUNT(customerID) >= 2
ORDER BY Country, total_customers DESC;


-- לקוחות לפי מדינה ועיר




















SELECT OrderID, SUM(Price*Quantity) AS Total
FROM order_details
JOIN products USING(ProductId)
JOIN orders USING(OrderId)
GROUP BY OrderID
HAVING sum(Price*Quantity) > 9000
ORDER BY Total DESC;


SELECT *
FROM Products
ORDER BY Price DESC
LIMIT 5 OFFSET 2;

SELECT AVG(Price)
FROM Products;

SELECT *
FROM Products 
WHERE Price >
	(SELECT AVG(Price)
	FROM Products);



SELECT *
FROM Products
ORDER BY Price DESC
LIMIT 3;

SELECT *
FROM Order_Details 
WHERE ProductId IN (
					SELECT ProductId
					FROM Products
					WHERE ProductName LIKE 'C%'
);

SELECT *
FROM Order_Details
			JOIN Products USING(ProductID)
WHERE ProductName LIKE 'C%';

SELECT AVG(num_products)
FROM (
		SELECT OrderID , COUNT(ProductID) AS num_products
		FROM Order_Details
		GROUP BY OrderID
 ) AS NumProductsPerOrder;







SELECT *
FROM Products 
JOIN Categories ON Products.CategoryId = Categories.CategoryId;
                             
 
SELECT *
FROM Employees 
JOIN Customers 
ON Employees.firstName = Customers.CustomerName                        
                        
                        
                        
                        
                        
