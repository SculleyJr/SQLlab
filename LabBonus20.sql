--Select all records from customers
Select * From Customers;

Select * From Employees

--Find all customers living in paris or london

Select * From Customers Where City = 'London' or City = 'Paris'

-- Make a list of cities where customers are coming from with no dups

Select Distinct City From Customers Where City  is not null

--Show a sorted list of employees firt names

Select  FirstName From Employees Order By FirstName

--Find average of bla bla bla

Select AVG(UnitPrice) From Products

--Show the name of product with highest price

Select ProductName From Products Where UnitPrice = (Select MAX(UnitPrice) From Products)

--Select all employees who have a BA

Select FirstName , LastName From Employees Where Notes Like '%BA%'

--Find total for each order

Select * From [Order Details]

Select ((UnitPrice-(UnitPrice * Discount)) * Quantity) From [Order Details]

--Get a list from all employes hired between 1/1/1994

Select Firstname From Employees where HireDate >= '1/1/1994'

--Find out how long each employee works in years

Select FirstName, DATEDIFF(year, HireDate , GetDate()) From Employees

--Get a list of all products in ascending and descending order

Select  ProductName,UnitsInStock From Products Order by UnitsInStock
Select  ProductName,UnitsInStock From Products Order by UnitsInStock Desc

--Select Products low inventory less than 6
Select ProductName From Products Where UnitsInStock < '6'

--Find list of all discontinued items

Select ProductName From Products Where Discontinued = '1'

--Select all products that have tofu
Select ProductName From Products Where ProductName Like '%tofu%'

--Find product with highest unit price

Select ProductName From Products  Where UnitPrice = (Select MAX(UnitPrice) From Products)

--Get a list of employees hired after 1/1/1993
Select Firstname From Employees where HireDate >= '1/1/1993'

--Get all employees of Ms. and Mrs.

Select FirstName From Employees Where TitleOfCourtesy = 'Ms.' or TitleOfCourtesy =  'Mrs.'

--Get all employees with area code 206

Select FirstName From Employees Where HomePhone Like '%206%' 

