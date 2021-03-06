
--Selects all the records from the "Customer Table"
SELECT *
FROM Customers;

--Select distinct countries form Customers Table

Select Distinct COUNTRY FROM Customers;

--Get all records from table customers with customer ID starts with BL

SELECT * FROM Customers Where CustomerID LIKE 'Bl%'

--Get the first 100 records of the orders table

Select Top 100 * From Orders

--Get all customers that live in the postal codes 1010,3012,12209, 05023

Select  * From Customers Where PostalCode='1010' OR PostalCode='3012' OR PostalCode='12209' OR PostalCode='05023' ;

--Get all where shipping is not equal to NULL

Select * From Orders Where ShipRegion IS NOT NULL

--Get all customers ordered by the country, then by city

Select * From Customers Order By Country, City

--Add Customer to Customer table (come back)

Update Orders Set ShipRegion = 'EuroZone' Where ShipCountry = 'France'


--Delete all orders that have quantity 1

Delete From [Order Details] Where Quantity = 1

--Find Average MIN and Max for

Select Min(Quantity) From [Order Details]
Select Max(Quantity) From [Order Details]
Select AVG(Quantity) From [Order Details]

--Find Average MIN and Max for group by OrderID

Select Min(Quantity) From [Order Details] Group by OrderID
Select Max(Quantity) From [Order Details] Group by OrderID
Select AVG(Quantity) From [Order Details] Group by OrderID

--Select customer for order ID 10290

Select CustomerID From [Orders] Where OrderID = '10290'

--Q14

SELECT Orders.OrderID, Customers.CustomerID 
FROM (Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID)

SELECT Orders.OrderID, Customers.CustomerID 
FROM (Orders
Left JOIN Customers ON Orders.CustomerID = Customers.CustomerID)

SELECT Orders.OrderID, Customers.CustomerID 
FROM (Orders
Right JOIN Customers ON Orders.CustomerID = Customers.CustomerID)

--Q15
Select FirstName From [Employees] Where ReportsTo IS NULL

--Q16

SELECT FirstName FROM [Employees] WHERE ReportsTo = 2



