-- find all products
SELECT  * FROM products;
-- find all products that cost $1400
SELECT Name, Price FROM products
WHERE Price = 1400;
-- find all products that cost $11.99 or $13.99
Select Name, Price FROM products
where Price = 11.99 OR Price = 13.99;
-- find all products that do NOT cost 11.99 - using NOT
SELECT * FROM products
WHERE NOT Price = 11.99
ORDER BY Price ASC;
-- find all products and sort them by price from greatest to least
SELECT Name, Price FROM products
ORDER BY Price DESC;
-- find all employees who don't have a middle initial
SELECT FirstName, MiddleInitial, LastName FROM employees
WHERE MiddleInitial IS NULL;
-- find distinct product prices
SELECT DISTINCT Price FROM products
ORDER BY Price ASC;
-- find all employees whose first name starts with the letter ‘j’
SELECT FirstName, LastName FROM employees
WHERE FirstName LIKE "j%";
-- find all Macbooks
SELECT Name, Price FROM products
WHERE Name LIKE "Macbook%";
-- find all products that are on sale
SELECT Name, OnSale FROM products
WHERE Onsale = 1;
-- find the average price of all products
SELECT AVG(Price) FROM products;
-- find all Geek Squad employees who don't have a middle initial
SELECT FirstName, LastName, Title, MiddleInitial FROM employees
WHERE Title LIKE "%Geek%" 
AND MiddleInitial IS NULL;
-- find all products from the products table whose stock level is in the range -- of 500 to 1200. Order by Price from least to greatest. Hint: Use the between keyword
SELECT * FROM products
WHERE StockLevel BETWEEN 500 AND 1200
ORDER BY Price ASC;