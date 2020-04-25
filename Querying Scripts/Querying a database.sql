--SELECT ALL records from table Customers
select * from Customers

--SELECT records only from the name column in the Customers table.
select firstname from Customers

--Show the name of the Customer whose CustomerID is 1.
select firstname from Customers
where CustomerID = 1

--UPDATE the record for CustomerID = 1 on the Customer table so that the name is “Lerato Mabitso”.
update Customers
set Firstname = 'Lerato', Lastname = 'Mabitso'
where CustomerID = 1

--DELETE the record from the Customers table for customer 2 (CustomerID = 2).
delete from Customers
where CustomerID = 2

--Select all unique statuses from the Orders table and get a count of the number of orders for each unique status.
select DISTINCT status, count(*) as numberOfOrders from Orders
group by status

--Return the MAXIMUM payment made on the PAYMENTS table.
select max(amount) from Payments

--Select all customers from the “Customers” table, sorted by the “Country” column.
select * from Customers
order by Country

--Select all products with a price BETWEEN R100 and R600.
select * from Products
where Buyprice between 100.00 and 600.00

--Select all fields from “Customers” where country is “Germany” AND city is “Berlin”.
select * from Customers
where Country = 'Germany' and City = 'Berlin'

--Select all fields from “Customers” where city is “Cape Town” OR “Durban”.
select * from Customers
where City = 'Cape Town' or City = 'Durban'

--Select all records from Products where the Price is GREATER than R500.
select * from Products
where Buyprice > 500

--Return the sum of the Amounts on the Payments table.
select sum(amount)
from payments

--Count the number of shipped orders in the Orders table.
select DISTINCT status, count(*) as numberOfOrders from Orders
where status = 'Shipped'
group by status

--Return the average price of all Products, in Rands and in Dollars (assume the exchange rate is R12 to the Dollar).
select productName, avg(Buyprice) as avgInRands, avg(Buyprice)/12 as avgInDollars
from products
group by productName

--Using INNER JOIN create a query that selects all Payments with Customer information.
select p.CustomerID, p.PaymentID, p.PaymentDate, p.Amount
from Payments as p
inner join Customers on p.CustomerID = Customers.CustomerID

--Select all products that have turnable front wheels.
select * from Products
where Description like 'Turnable front wheels%'
