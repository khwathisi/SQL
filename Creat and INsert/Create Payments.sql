Create Table Payments(
CustomerID int references Customers(CustomerID),
PaymentID serial primary key,
PaymentDate timestamp,
Amount decimal)
