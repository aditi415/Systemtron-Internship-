postgres=# create table Customers(CustomerID  SERIAL PRIMARY KEY, Name VARCHAR(100) NOT NULL, Email VARCHAR(100) UNIQUE NOT NULL, Phone VARCHAR(15), Address TEXT);
CREATE TABLE

postgres=# create table Categories(CategoryID SERIAL PRIMARY KEY,CategoryName VARCHAR(50) NOT NULL UNIQUE);
CREATE TABLE

create table Products(ProductID SERIAL PRIMARY KEY,Name VARCHAR(100) NOT NULL, Description TEXT, Price DECIMAL(10,2) NOT NULL, CategoryID INT,FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID));
CREATE TABLE

postgres=# create table Orders(OrderID SERIAL PRIMARY KEY,CustomerID INT,OrderDate DATE NOT NULL, TotalAmount DECIMAL(10,2), FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID));
CREATE TABLE

postgres=# create table Order_Items(OrderItemID SERIAL PRIMARY KEY, OrderID INT,ProductID INT,Quantity INT NOT NUll, Price DECIMAL(10,2), FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),FOREIGN KEY (ProductID) REFERENCES Products(ProductID));
CREATE TABLE

postgres=# create table Payments(PaymentID SERIAL PRIMARY KEY, OrderID INT UNIQUE, PaymentDate DATE NOT NULL, PaymentMethod VARCHAR(50),FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)); 
CREATE TABLE


