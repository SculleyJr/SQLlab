
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

--Add Customer to Customer table


