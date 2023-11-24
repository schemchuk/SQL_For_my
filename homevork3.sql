
-- Вывести самый дорогой товар из категории 4

SELECT *
FROM Products
WHERE CategoryID = 4
ORDER BY Price DESC
LIMIT 1;

-- Вывести страны поставщиков, кроме поставщика 1

SELECT Country
FROM Suppliers
WHERE SupplierID <> 1;

-- Вывести клиентов из Germany, имена которых начинаются на t

SELECT CustomerName
FROM Customers
WHERE Country = "Germany"
	and 
    CustomerName LIKE "t%";

-- Вывести телефоны перевозчиков

SELECT ShipperName, Phone
FROM Shippers;
