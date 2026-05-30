-- customer table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    Country VARCHAR(50)
);

-- order table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    Amount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

INSERT INTO Customers (CustomerID, CustomerName, Country) VALUES
(1, 'Alice', 'USA'),
(2, 'Bob', 'UK'),
(3, 'Charlie', 'Canada');

INSERT INTO Orders (OrderID, CustomerID, OrderDate, Amount) VALUES
(101, 1, '2024-01-15', 250.00),
(102, 1, '2024-02-10', 300.00),
(103, 2, '2024-03-05', 150.00);

Select * from customers 
join orders
on custoemr.customerId=orders.customerId;

select a.customerName, b.Amount from customers as a
left join orders as b
on a.customerId= b.customerId;


-- subqueries
select name from table1 where marks > (Select avg(marks) from table1);

Select name from employee where  (id % 2)=0;




