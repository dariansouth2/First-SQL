/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
SELECT p.Name AS Product, c.Name AS Category
FROM products AS p
INNER JOIN categories AS c
ON p.CategoryID = c.CategoryID
WHERE c.Name = "Computers";
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
SELECT p.Name, p.Price, r.Rating
FROM products AS p
INNER JOIN reviews AS r
ON p.ProductID = r.ProductID
WHERE r.Rating = 5;
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
SELECT CONCAT (e.FirstName, " ", e.LastName) AS Employee, SUM(s.Quantity) AS Total
FROM employees AS e
INNER JOIN sales AS s
ON e.EmployeeID = s.EmployeeID
GROUP BY e.EmployeeID
ORDER BY Total DESC
LIMIT 5;
/* joins: find the name of the department, and the name of the category for Appliances and Games */
SELECT d.Name AS Department, c.Name AS Category
From categories AS c
INNER JOIN departments AS d
on d.DepartmentID = c.DeparmentID
WHERE c.Name= "Appliances" OR c.Name ="Games";
/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
	SELECT products.Name AS Product, SUM(QUANTITY) AS 'Total Units Sold', 
    SUM (QUANTITY + PricePerUnit) AS Gross_Revenue
	FROM sales
    INNER JOIN products
    ON sales.ProductsID = products.ProductID
    WHERE Name LIKE "%Hotel%California%";
/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
SELECT p.Name, r.reviewer, r.rating, r.comment 
FROM products as p 
JOIN reviews as r 
ON p.Product = r.ProductID
WHERE r.rating = 1 and p.name LIKE 'Visio%';