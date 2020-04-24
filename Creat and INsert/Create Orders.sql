Create Table Orders(
OrderID serial primary key,
ProductID int references Products(ProductID),
PaymentID int references Payments(PaymentID),
FulfilledByEmployeeID int references Employees(EmployeeID),
DateRequired timestamp,
DateShipped timestamp,
Status varchar(20))
