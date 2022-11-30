-- Using the bestbuy database:
USE bestbuy;
-- find all products
SELECT * FROM bestbuy.products;
-- find all products that cost $1400
SELECT * FROM bestbuy.products
WHERE products.Price = 1400; 
-- find all products that cost $11.99 or $13.99
SELECT * FROM bestbuy.products
WHERE products.price = 11.99 OR product.price = 13.99;
-- find all products that do NOT cost 11.99 - using NOT
SELECT * FROM bestbuy.product
WHERE NOT product.price = 11.99;
-- find all products and sort them by price from greatest to least
SELECT * FROM bestbuy.product
ORDER BY product.price DESC;
-- find all employees who don't have a middle initial
SELECT * FROM employees
WHERE MiddleInital IS NULL;
-- find distinct product prices
SELECT DISTINCT bestbuy.product.price
FROM bestbuy.product;
-- find all employees whose first name starts with the letter ‘j’
SELECT * FROM employees
WHERE FirstName LIKE 'j%'; 
-- find all Macbooks
SELECT * FROM bestbuy.products
WHERE NAME = 'Macbook';
-- find all products that are on sale
SELECT * FROM bestbuy.products
WHERE OnSale = 1;
-- find the average price of all products
SELECT AVG(products.price) FROM bestbuy.products;
-- find all Geek Squad employees who don't have a middle initial
SELECT * FROM bestbuy.employees AS emp
WHERE emp.MiddleInitial IS NULL AND emp.title = 'Geek Squad';
-- find all products from the products table whose stock level is in the range -- of 500 to 1200. Order by Price from least to greatest
SELECT * FROM bestbuy.products
WHERE StockLevel BETWEEN 500 AND 1200
ORDER BY Price;