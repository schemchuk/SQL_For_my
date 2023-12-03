--  1 уровень сложности: В рамках БД "песочница: интернет-магазин" напишите след/запросы:


-- Вывести название и стоимость в USD одного самого дорогого проданного товара

SELECT 
	Products.ProductName,
    Products.Price AS Price_USD
FROM
	Products
ORDER BY 
	Products.Price DESC
LIMIT 1;

-- Вывести два самых дорогих товара из категории Beverages из USA

SELECT 
	Products.ProductName,
    Products.Price AS Price_USD
FROM 
	Products
 JOIN Categories ON Products.CategoryID = Categories.CategoryID
 JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
 WHERE Categories.CategoryName = "Beverages" AND Suppliers.Country = "USA"
 ORDER BY
 	Price_USD DESC
    LIMIT 2;

-- Вывести список стран, которые поставляют морепродукты

SELECT 
	Suppliers.Country
FROM 
	Products
 JOIN Categories ON Products.CategoryID = Categories.CategoryID
 JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
 WHERE Categories.CategoryName = "Seafood" 
