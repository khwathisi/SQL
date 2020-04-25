--Create a database called “Umuzi”.
Create Database Umuzi

--Create the following tables in the Umuzi database:
--Customers
Create Table Customers(
CustomerID serial primary key,
Firstname varchar(50),
LastName varchar(50),
Gender varchar,
Address varchar(200),
Phone bigint,
Email varchar(100),
City varchar(20),
Country varchar(50))
--Employees
Create Table Employees(
EmployeeID serial primary key,
Firstname varchar(50),
LastName varchar(50),
Email varchar(100),
JobTitle varchar(20))
--Products
Create Table Products(
ProductID serial primary key,
ProductName varchar(100),
Description varchar(300),
BuyPrice decimal)
--Payments
Create Table Payments(
CustomerID int references Customers(CustomerID),
PaymentID serial primary key,
PaymentDate timestamp,
Amount decimal)
--Orders
Create Table Orders(
OrderID serial primary key,
ProductID int references Products(ProductID),
PaymentID int references Payments(PaymentID),
FulfilledByEmployeeID int references Employees(EmployeeID),
DateRequired timestamp,
DateShipped timestamp,
Status varchar(20))

--INSERT the records in the tables below into the table you created in step 2
--Customers
Insert Into Customers(CustomerID, FirstName, LastName, Gender, Address, Phone, Email, City, Country)
Values(Default, 'John', 'Hibert', 'Male', '284 chaucer st', 084789657, 'john@gmail.com', 'Johannesburg', 'South Africa'),
(Default, 'Thando', 'Sithole', 'Female', '240 Sect 1', 0794445584, 'thando@gmail.com', 'Cape Town', 'South Africa'),
(Default, 'Leon', 'Glen', 'Male', '81 Everton Rd,Gillits', 0820832830, 'Leon@gmail.com', 'Durban', 'South Africa'),
(Default, 'Charl', 'Muller', 'Mal', '81 Everton Rd,Gillits', 44856872553, 'Charl.muller@yahoo.com', 'Berlin', 'Germany'),
(Default, 'Julia', 'Stein', 'Female', '2 Wernerring', 448672445058, 'Js234@yahoo.com', 'Frankfurt', 'Germany')
--Employees
Insert Into Employees(EmployeeID, FirstName, LastName, Email, Jobtitle)
Values(Default, 'Kani', 'Matthew', 'mat@gmail.com', 'Manager'),
      (Default, 'Lesly', 'Cronje', 'LesC@gmail.com', 'Clerk'),
      (Default, 'Gideon', 'Maduku', 'm@gmail.com', 'Accountant')
--Products
Insert Into Employees(EmployeeID, FirstName, LastName, Email, Jobtitle)
Values(Default, 'Kani', 'Matthew', 'mat@gmail.com', 'Manager'),
      (Default, 'Lesly', 'Cronje', 'LesC@gmail.com', 'Clerk'),
      (Default, 'Gideon', 'Maduku', 'm@gmail.com', 'Accountant')
--Payments
Insert Into Payments
Values(1, 1, '01-09-2018', 150.75),
      (5, 2, '03-09-2018', 150.75),
      (4, 3, '03-09-2018', 700.60)
--Orders
Insert Into Orders
Values(1, 1, 1, 2, '05-09-2018', null, 'Not shipped'),
      (2, 1, 2, 2, '04-09-2018', '03-09-2018', 'Shipped'),
      (3, 3, 3, 3, '06-09-2018', null, 'Not shipped')



