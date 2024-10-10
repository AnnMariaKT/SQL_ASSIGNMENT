--SQL Server Lab Assignments-Part 2


create database AssigmentTwoDB

use AssigmentTwoDB



--Assignment 1: Sales Database
--Scenario:
--You are given a Sales table containing sales data for various products. The table structure is as
--follows: 

create table Sales(
SaleID int,
ProductID int,
ProductName varchar(50),
QuantitySold int,
SaleAmount int,
SaleDate varchar(50)
);

insert into Sales(SaleID, ProductID, ProductName, QuantitySold, SaleAmount, SaleDate)
values
(1, '101', 'Laptop', 5, 5000, '2024-09-01'),
(2, '102', 'Mouse', 10, 250,' 2024-09-02'),
(3, '101', 'Laptop', 3, 3000, '2024-09-03'),
(4, '103', 'Keyboard', 8, 800, '2024-09-04'),
(5, '102', 'Mouse', 6, 150, '2024-09-05');

select * from Sales

--1. Write a query to calculate the total sales amount for all products (SUM).
select sum(SaleAmount) as TotalSaleAmount from Sales 

--2. Write a query to find the maximum quantity sold of any product (MAX).
select max(QuantitySold) as MaximumSale from Sales 

--3. Write a query to calculate the average sale amount per sale (AVG).
select avg(SaleAmount) as SaleAverage from Sales 

--4. Write a query to find the minimum sale amount in the database (MIN).
select min(SaleAmount) as Minimumsale from Sales 

--5. Write a query to calculate the total quantity sold of a specific product, say "Laptop"
--(SUM with WHERE clause). 

select sum(QuantitySold)  as SaleAverage from Sales 
where ProductName = 'Laptop'



--Assignment 2: Employee Salaries

--You are given an Employees table with salary details. The table structure is as follows:


--create table Employees(
--EmployeeID int,
--EmployeeName varchar(50),
--Department varchar(50),
--Salary int,
--HireDate varchar(50)
--);

--insert into Employees(EmployeeID, EmployeeName, Department, Salary, HireDate)
--values
--(1, 'John Doe', 'IT', 5000, '2022-01-10'),
--(2, 'Jane Smith', 'HR', 6000, '2021-03-15'),
--(3, 'Bob Johnson', 'Finance', 5500 ,'2020-06-20'),
--(4, 'Alice Brown', 'IT', 6200 ,'2023-02-01' ),
--(5, 'Charlie White', 'Marketing', 4800, '2023-03-10');

--select * from Employees

--1. Write a query to find the total salary expenditure for all employees (SUM).
select sum(Salary) as total_salary_expenditure from Employees

--2. Write a query to find the highest salary among all employees (MAX).
select max(Salary) as total_salary from Employees

--3. Write a query to calculate the average salary across all employees (AVG).
select avg(Salary) as average_salary_expenditure from Employees

--4. Write a query to find the minimum salary in the IT department (MIN with WHERE
--clause).
select min(Salary) as Minimum_salary from Employees
where Department = 'IT'

--5. Write a query to find the total number of employees in each department (COUNT and
--GROUP BY). 
select Department ,count(*) as total_employees from Employees
group by Department




--Assignment 3: Inventory Management

--You are given an Inventory table with information about the stock levels of different products.
--The table structure is as follows:

create table Inventory(
ProductID int,
ProductName varchar(50),
QuantityInStock int, 
ReorderLevel int,
LastRestockDate date
);


--SELECT COUNT(DISTINCT ProductID) AS TotalProductsRated
--FROM ProductRatings;

insert into Inventory(ProductID, ProductName, QuantityInStock, ReorderLevel, LastRestockDate)
values
(201, 'Monitor', 50, 10, '2024-08-25'),
(202, 'Printer', 30, 5, '2024-09-01'),
(203, 'Mouse', 100, 15, '2024-09-10'),
(204, 'Keyboard', 80, 20, '2024-09-15'),
(205, 'Laptop', 25, 5, '2024-09-20');
--1. Write a query to find the total quantity of products in stock (SUM).
SELECT SUM(QuantityInStock) AS total_quantity_of_products from Inventory

--2. Write a query to find the product with the highest quantity in stock (MAX).
SELECT max(QuantityInStock) AS max_quantity_of_products from Inventory


--3. Write a query to find the average reorder level across all products (AVG).
SELECT avg(ReorderLevel) AS average_reorder_level from Inventory


--4. Write a query to find the product with the lowest reorder level (MIN).
SELECT ProductName, ReorderLevel from Inventory where ReorderLevel = (select min(ReorderLevel) from Inventory);


--5. Write a query to find the total quantity in stock for products where the quantity is
--less than the reorder level (SUM with WHERE clause). SELECT sum(QuantityInStock) AS QuantityInStock from Inventory where QuantityInStock < ReorderLevel;
--Assignment 4: Customer Orders Database
--Scenario:
--You have a CustomerOrders table that contains details about customer orders. The structure of
--the table is as follows:

create table CustomerOrders(
OrderID int,
CustomerID varchar(50),
OrderDate date,
OrderAmount int, 
QuantityOrdered int
);

insert into CustomerOrders(OrderID, CustomerID, OrderDate, OrderAmount, QuantityOrdered)
values
(501, 'C001', '2024-09-10', 1500, 3),
(502, 'C002', '2024-09-11', 2000, 5),
(503, 'C001', '2024-09-12', 1000, 2),
(504, 'C003', '2024-09-13', 2500, 4),
(505, 'C002', '2024-09-14', 3000, 6);

select * from CustomerOrders

--1. Write a query to calculate the total order amount for all orders (SUM).
select sum(OrderAmount) as total_order_amount_for_all_orders from CustomerOrders

--2. Write a query to find the average order amount for all customers (AVG).
select avg(OrderAmount) as average_order_amount from CustomerOrders

--3. Write a query to find the maximum order amount from a single order (MAX).
select max(OrderAmount) as Maximum_order_amount from CustomerOrders

--4. Write a query to find the total quantity ordered across all orders (SUM).
select sum(QuantityOrdered) as total_Quantity_Ordered from CustomerOrders
--5. Write a query to find the minimum order amount in the database (MIN). select min(OrderAmount) as Minimum_order_amount from CustomerOrders



--Assignment 6: Product Ratings Database
--You have a ProductRatings table containing customer ratings for various products. The
--structure is as follows:

create table ProductRatings(
RatingID int,
ProductID varchar(50),
CustomerID varchar(50),
Rating int,
ReviewDate date
);

insert into ProductRatings(RatingID, ProductID, CustomerID, Rating, ReviewDate)
values
(1, 'P001', 'C001', 4, '2024-09-01'),
(2, 'P002', 'C002', 5, '2024-09-02'),
(3, 'P001', 'C003', 3, '2024-09-03'),
(4, 'P003', 'C001', 2, '2024-09-04'),
(5, 'P002', 'C004', 4, '2024-09-05');

select * from ProductRatings


--1. Write a query to calculate the average rating for each product (AVG with GROUP BY).
select RatingID ,avg(Rating) as Average_Rating from ProductRatings
group by RatingID

--2. Write a query to find the highest rating given to any product (MAX).
select max(Rating) as highest_rating from ProductRatings

--3. Write a query to find the lowest rating given to any product (MIN).
select min(Rating) as lowest_rating from ProductRatings

--4. Write a query to find the total number of ratings for each product (COUNT and GROUP
--BY).
select ProductID ,count(*) as Total_Number_of_Rating from ProductRatings
group by ProductID
--5. Write a query to find the total number of products rated (COUNT with DISTINCT). select distinct count(RatingID) as total_products_rated from ProductRatings--SQL Server assignments and solutions using various SQL operators such as IN,
--BETWEEN, LIKE, AND, OR, NOT, etc.

--Assignment 1:
--Retrieve Employees Who Work in Specific Departments Using IN Operator

--Retrieve the names of employees who work in either the 'HR', 'Finance', or 'IT'
--departments.
--Tables:
--Employees (EmployeeID, EmployeeName, DepartmentID)
create table Employer(
EmployeeID int,
EmployeeName varchar(50),
Department varchar(50),
);

insert into Employer (EmployeeID, EmployeeName, Department)
values
(1, 'John Doe', 'IT'),
(2, 'Jane Smith', 'HR'),
(3, 'Bob Johnson', 'Finance'),
(4, 'Alice Brown', 'IT' ),
(5, 'Charlie White', 'Marketing');

select * from Employer
SELECT * FROM Employer where Department in('HR', 'Finance', 'IT')

--Assignment 2:
--Retrieve Products Within a Specific Price Range Using BETWEEN Operator
--Retrieve the product names and prices of products that are priced between 100 and 500.
--Tables:
--Products (ProductID, ProductName, Price)

create table Products(
ProductID int,
ProductName varchar(50),
Price varchar(50)
);

insert into Products (ProductID, ProductName, Price)
values
(1, 'Laptop', '700'),
(2, 'Mouse', '500'),
(3, 'keyboard', '60'),
(4, 'CPU', '120' ),
(5, 'Speaker', '150');

SELECT * FROM Products where Price between 100 AND 500


--Assignment 3:
--Find Customers Whose Name Starts With 'A' Using LIKE Operator
--Task: Retrieve the customer names that start with the letter 'A'.
--Tables:
--Customers (CustomerID, CustomerName)

create table Customer(
CustomerID int,
CustomerName varchar(50)
);

insert into Customer(CustomerID, CustomerName)
values
(1, 'John Doe'),
(2, 'Jane Smith'),
(3, 'Bob Johnson'),
(4, 'Alice Brown' ),
(5, 'Charlie White');

SELECT * FROM Customer where CustomerName LIKE'A%'



--Assignment 4:
--Retrieve Orders Placed on Specific Dates Using IN Operator
--Task: Retrieve the order IDs of orders placed on '2023-01-01', '2023-02-01', and '2023-03-01'.
--Tables:
--Orders (OrderID, OrderDate)
create table Orders(
OrderID int,
OrderDate date
);

insert into Orders(OrderID, OrderDate)
values
(1, '2023-01-01'),
(2, '2023-02-01'),
(3, '2024-09-03'),
(4, '2023-03-01'),
(5, '2024-09-05');SELECT * FROM Orders where OrderDate in ('2023-01-01', '2023-02-01', '2023-03-01')


--Assignment 5:  
--Retrieve Products That Are Not Priced Between 100 and 500 Using NOT BETWEEN 
--Operator 
--Task: Retrieve the product names and prices of products that are not priced between 100 and 
--500. 
--Tables: 
-- Products (ProductID, ProductName, Price) 


create table Productss(
ProductID int,
ProductName varchar(50),
Price varchar(50)
);

insert into Productss(ProductID, ProductName, Price)
values
(1, 'Laptop', '700'),
(2, 'Mouse', '500'),
(3, 'keyboard', '60'),
(4, 'CPU', '120' ),
(5, 'Speaker', '150');

select * from Productss where Price NOT BETWEEN 100 AND 500

--Assignment 6:  
--Find Orders Where the Total Amount is More Than 5000 or Less Than 1000 Using OR 
--Operator 
--Task: Retrieve the order IDs where the total amount is either greater than 5000 or less than 1000. 
--Tables: 


create table Orderss(
OrderID int,
OrderAmount int
);

insert into Orderss(OrderID, OrderAmount)
values
(1, 2000),
(2, 5000),
(3, 3500),
(4, 7000),
(5, 8000);
select * from Orderss where OrderAmount > 5000 or OrderAmount<1000



--Assignment 7:  
--Retrieve Employees Who Do Not Work in the 'HR' or 'IT' Departments Using NOT IN 
--Operator 
--Task: Retrieve the names of employees who do not work in the 'HR' or 'IT' departments. 
--Tables: 
-- Employees (EmployeeID, EmployeeName, DepartmentID) 


create table Employ(
EmployeeID int,
EmployeeName varchar(50),
Department varchar(50),
);

insert into Employ (EmployeeID, EmployeeName, Department)
values
(1, 'John Doe', 'IT'),
(2, 'Jane Smith', 'HR'),
(3, 'Bob Johnson', 'Finance'),
(4, 'Alice Brown', 'IT' ),
(5, 'Charlie White', 'Marketing');

select * from Employ where Department NOT IN('HR', 'IT')



--Assignment 8:  
--Retrieve Orders Placed in 2023 Using BETWEEN and AND Operators 
--Task: Retrieve the order IDs of orders placed between '2023-01-01' and '2023-12-31'. 
--Tables: 
-- Orders (OrderID, OrderDate) 

create table Ordersss(
OrderID int,
OrderDate date
);

insert into Ordersss(OrderID, OrderDate)
values
(1, '2023-01-01'),
(2, '2023-02-01'),
(3, '2024-09-03'),
(4, '2023-03-01'),
(5, '2024-09-05');
select * from Ordersss where OrderDate BETWEEN '2023-01-01' and '2023-12-31'

--Assignment 9:  
--Find Customers Who Do Not Have 'John' in Their Name Using NOT LIKE Operator 
--Task: Retrieve the customer names that do not have 'John' in them. 
--Tables: 
-- Customers (CustomerID, CustomerName) 


create table Cust(
CustomerID int,
CustomerName varchar(50)
);

insert into Cust (CustomerID, CustomerName)
values
(1, 'John Doe'),
(2, 'Jane Smith'),
(3, 'Bob Johnson'),
(4, 'Alice Brown'),
(5, 'Charlie White');

select * from Cust where CustomerName NOT LIKE '%John%'


--Assignment 10:  
--Retrieve Products That Are Either in Category 'A' or Priced Below 100 Using IN and OR 
--Operators 
--Task: Retrieve the product names and prices of products that are either in category 'A' or have a 
--price less than 100. 
--Tables: 
-- Products (ProductID, ProductName, Price, CategoryID) 
-- Categories (CategoryID, CategoryName) 

create table Produc(
ProductID int,
ProductName varchar(50),
Price varchar(50)
);


create table Categories(
CategoryID int, 
CategoryName char(50)
);

insert into Produc(ProductID, ProductName, Price)
values
(1, 'Laptop', '700'),
(2, 'Mouse', '500'),
(3, 'keyboard', '60'),
(4, 'CPU', '120'),
(5, 'Speaker', '150');

insert into Categories(CategoryID, CategoryName)
values
(102,'A'),
(103, 'B'),
(101, 'B'),
(104, 'C'),
(105, 'A');

select ProductName, Price
From Produc
where CategoryID = (select CategoryID from Categories where CategoryName = 'A')
or Price < 100;




















--Alter Table Command

--Assignment 1: Add a New Column 
--Task: Add a column DateOfBirth (data type DATE) to the Employees table to store employees' 
--dates of birth. 


Drop table Employees

create table Employees(
EmployeeID int NOT NULL PRIMARY KEY,
EmployeeName varchar(50),
FirstName varchar(50),
MiddleName varchar(50),
LastName varchar(50),
Department varchar(50),
Salary Decimal(10,2),
HireDate varchar(50), 
PhoneNumber int,
Stat varchar(50), 
Email varchar(100)
);

select * from Employees

insert into Employees
values
(101, 'Sara Rose', 'Sara','A', 'Rose', 'IT', 20000, '01/12/2022', 123456, 'Active', '123@gmail.com' ),
(102, 'Irene Aice', 'Irene','B', 'Alice', 'Marketing', 8000, '21/10/2020', 123856, 'inactive', '456@gmail.com' )



ALTER TABLE Employees 
ADD DateOfBirth date; 

--Assignment 2: Modify Column Data Type 
--Task: Change the data type of the PhoneNumber column in the Customers table to 
--VARCHAR(15). 

ALTER TABLE Employees 
ALTER COLUMN PhoneNumber Varchar(50); 
select * from Employees

--Assignment 3: Add a Primary Key 
--Task: Add a primary key to the DepartmentID column in the Departments table. 

drop table  Departments 

create table Departments(
DepartmentID int NOT NULL,
DepartmentName varchar(50)
);

select * from Departments

ALTER TABLE Departments 
ADD CONSTRAINT PK_Department PRIMARY KEY (DepartmentID);


--Assignment 4: Drop a Column 
--Task: Remove the MiddleName column from the Employees table. 

ALTER TABLE Employees
DROP COLUMN MiddleName

select * from Employees
--Assignment 5: Add a Foreign Key 
--Task: Add a foreign key to the EmployeeID column in the Orders table that references the 
--EmployeeID column in the Employees table. 


drop table Orders

create table Orders(
OrderID int NOT NULL PRIMARY KEY,
CustomerID int,
OrderDate varchar(60),
TotalAmount varchar(60),
EmployeeID int NOT NULL,
);
select * from Orders

ALTER TABLE Orders 
ADD CONSTRAINT FK_Employee 
FOREIGN KEY (EmployeeID)
REFERENCES Employees(EmployeeID);

--Assignment 6: Drop a Foreign Key 
--Task: Remove the foreign key constraint that references EmployeeID from the Orders table. 

ALTER TABLE Orders 
DROP CONSTRAINT FK_Employee;



--Assignment 7: Rename a Column 
--Task: Rename the column FullName to EmployeeFullName in the Employees table. 

EXEC sp_rename  'Employees.FirstName ', 'FullName', 'COLUMN';
select * from Employees

--Assignment 8: Add a Default Value 
--Task: Add a default value of 'Active' to the Status column in the Employees table. 

--using update
update Employees
set Stat = 'Active'

--using default
ALTER TABLE Employees 
ADD CONSTRAINT DF_Stat  
DEFAULT 'Active' FOR Stat;



--Assignment 9: Drop a Primary Key 
--Task: Drop the primary key constraint from the Departments table. 



ALTER TABLE Departments 
DROP CONSTRAINT PK_Department; 



--Assignment 10: Add a Unique Constraint 
--Task: Ensure the Email column in the Employees table is unique by adding a unique constraint. 

ALTER TABLE Employees 
ADD CONSTRAINT UQ_Email UNIQUE (Email);


--Assignment 11: Add a Check Constraint 
--Task: Add a check constraint to the Salary column in the Employees table to ensure that no 
--salary is less than 1000. 

ALTER TABLE Employees
ADD CONSTRAINT sal_chk CHECK (Salary > 1000);


--Assignment 13: Drop a Check Constraint 
--Task: Remove the check constraint from the Salary column in the Employees table. 
ALTER TABLE Employees
DROP cONSTRAINT sal_chk













--SQL Server assignments involving subqueries. 



--Drop table Employees

--create table Employees(
--EmployeeID int NOT NULL PRIMARY KEY,
--EmployeeName varchar(50),
--FirstName varchar(50),
--MiddleName varchar(50),
--LastName varchar(50),
--Department varchar(50),
--Salary Decimal(10,2),
--HireDate varchar(50), 
--PhoneNumber int,
--Stat varchar(50), 
--Email varchar(100)
--);

--select * from Employees

--insert into Employees
--values
--(101, 'Sara Rose', 'Sara','A', 'Rose', 'IT', 20000, '01/12/2022', 123456, 'Active', '123@gmail.com' ),
--(102, 'Irene Aice', 'Irene','B', 'Alice', 'Marketing', 8000, '21/10/2020', 123856, 'inactive', '456@gmail.com' )




--Assignment 1:  
--Retrieve Employees Who Earn More Than the Average Salary 
--Task: Retrieve the names and salaries of employees whose salary is greater than the average 
--salary of all employees in the company.


select * from Employees

select FirstName, Salary 
from Employees
where Salary > (select avg(salary) from Employees as Average_Salary);


--Assignment 2:  
--Find Departments with More Than 5 Employees 
--Task: Retrieve the department names that have more than 5 employees. 
--Tables: 

create table Employee2(
EmployeeID int NOT NULL PRIMARY KEY ,
EmployeeName varchar(100), 
DepartmentID int
) ;
--drop table Employee2
insert into Employee2(EmployeeID, EmployeeName, DepartmentID)
values
(1, 'A', 101),
(2, 'B', 102),
(3, 'C', 103),
(4, 'D', 101),
(5, 'E', 102),
(6, 'F', 101),
(7, 'G', 101),
(8, 'H', 101),
(9, 'I', 103);

select * from Employee2

select distinct (DepartmentID) from Employee2 where DepartmentID = ( select DepartmentID from Employee2
group by DepartmentID having count(DepartmentID) >= 5);



--Assignment 3:  
--Retrieve Products with a Price Higher Than the Maximum Price of Category 'A' 
--Task: Retrieve the product names and prices of products that have a price higher than the 
--maximum price of products in category 'A'. 
--Tables: 

create table Products1 (
ProductID int,
ProductName varchar(100),
CategoryID varchar(50), 
Price int
);

--DROP TABLE Products1

insert into Products1 (ProductID, ProductName, CategoryID, Price)
values
(1, 'Laptop', 'A',200),
(2, 'Mouse', 'B', 300),
(3, 'keyboard', 'A', 200),
(4, 'CPU', 'C', 500 ),
(5, 'Speaker', 'A', 300);

SELECT * FROM Products1

select ProductName, Price from Products1 where  Price >= (select max(Price) from Products1 where CategoryID = 'A');


--Assignment 4:  
--Retrieve Employees Who Work in Departments with Average Salary Higher Than 50,000 
--Task: Retrieve the names of employees who work in departments where the average salary is 
--higher than 50,000. 
--Tables: 

--drop table Employees4

create table Employees4(
EmployeeID int NOT NULL PRIMARY KEY,
EmployeeName varchar(50), 
Salary Decimal(10,2),
DepartmentID int
);

insert into Employees4(EmployeeID, EmployeeName, Salary, DepartmentID) 
values
(101, 'JOhn', 100000, 201),
(102, 'Albert', 50000, 202),
(103, 'Sara', 15000, 203),
(104, 'Adi', 45000, 204),
(105, 'Elisa', 25000, 203);

select * from Employees4

--drop table Departments

create table Departments (
DepartmentID int ,
DepartmentName varchar(50)
); 

insert into Departments (DepartmentID, DepartmentName) 
values
(201, 'IT'),
(202, 'Marketing'),
(203, 'Finance'),
(204, 'HR');


select * from Employees4
where DepartmentID IN (select DepartmentID 
from Employees4 GROUP BY DepartmentID having avg(Salary)> 50000);


--Assignment 5:  
--Find Employees Who Earn More Than Their Department's Average Salary 
--Task: Retrieve the names of employees who earn more than the average salary of their 
--department. 
--Tables: 
-- Employees (EmployeeID, EmployeeName, Salary, DepartmentID) 

select * from Employees4
where Salary > ( select avg(salary) from Employees4 );

--Assignment 6:  
--Find Customers Who Have Not Placed Any Orders 
--Task: Retrieve the names of customers who have not placed any orders. 
--Tables: 
-- Customers (CustomerID, CustomerName) 

--  drop table Customer1 

create table Customer1(
CustomerID int, 
CustomerName varchar(50)
);

insert into Customer1 (CustomerID, CustomerName) 
values
(101, 'Hari'),
(102, 'Ram'),
(103, 'Sara'),
(104,'Maria');

create table orders1(
CustomerName varchar(50),
OrderQty int 
);

insert into orders1(CustomerName, OrderQty)
Values
('Hari', 5),
('Ram', 6),
('Maria',8);

select * from Customer1
select * from orders1
select *from Customer1 where CustomerName not in (select CustomerName from orders1);

--Assignment 7:  
--Retrieve Top 3 Highest-Paid Employees in Each Department 
--Task: Retrieve the top 3 highest-paid employees in each department. 
--Tables: 
-- Employees (EmployeeID, EmployeeName, Salary, DepartmentID)


---- TRY LATER DROP FOR NOW



--Assignment 8:  
--Find Products That Have Never Been Ordered 
--Task: Retrieve the names of products that have never been ordered. 
--Tables: 
-- Products (ProductID, ProductName) 
-- OrderDetails (OrderID, ProductID)

drop table Products

create table Products (
ProductID int,
ProductName varchar(50)
); 


insert into Products (ProductID, ProductName)
values
(101, 'Laptop'),
(102, 'Mouse'),
(103, 'Keyboard');

create table OrderDetails (
OrderID int, 
ProductID int
);

insert into OrderDetails (OrderID, ProductID)
values
(123, 101),
(321, 102);

select * from Products
select * from OrderDetails
select * from Products where ProductID not in(select ProductID from OrderDetails  )
























--SQL Server assignments that focus on different types of joins (INNER 
--JOIN, LEFT JOIN, RIGHT JOIN, FULL OUTER JOIN, CROSS JOIN) 



--Assignment 1:  
--Retrieve Employees and Their Department Names (INNER JOIN) 
--Task: Retrieve the employee names and their corresponding department names. 
--Tables: 
-- Employees (EmployeeID, EmployeeName, DepartmentID) 
-- Departments (DepartmentID, DepartmentName) 

--  drop table Employee1

create table Employee1(
EmployeeID int,
EmployeeName varchar(50), 
DepartmentID int
);

insert into Employee1(EmployeeID, EmployeeName, DepartmentID) 
values
(101, 'John', 111),
(102, 'Ali', 222),
(1033, 'Sara', 333),
(104, 'Mark', 777);


drop table Departments

create table Departments (
DepartmentID int ,
DepartmentName varchar(50)
);


insert into Departments (DepartmentID, DepartmentName) 
values
(111, 'HR'),
(222, 'Marketing'),
(333, 'Finance'),
(444, 'Research'),
(555, 'IT');


select * from Employee1
select * from Departments

select Employee1.EmployeeName, Departments.DepartmentName from Employee1
INNER JOIN Departments
on Employee1.DepartmentID = Departments.DepartmentID


--Assignment 2:  
--Retrieve All Employees and Their Department Names, Including Those Without 
--Departments (LEFT JOIN) 
--Task: Retrieve the employee names and their corresponding department names. Include 
--employees who are not assigned to any department. 
--Tables: 
-- Employees (EmployeeID, EmployeeName, DepartmentID) 

select Employee1.EmployeeName, Departments.DepartmentName from Employee1 
LEFT JOIN Departments
on Employee1.DepartmentID = Departments.DepartmentID
 


--Assignment 3:  
--Retrieve All Departments and the Employees Working in Them (RIGHT JOIN) 
--Task: Retrieve all departments and their respective employees. Include departments even if they 
--don’t have any employees. 
--Tables: 
-- Employees (EmployeeID, EmployeeName, DepartmentID)

select Employee1.EmployeeName, Departments.DepartmentName from Employee1 
RIGHT JOIN Departments
on Employee1.DepartmentID = Departments.DepartmentID



--Assignment 4:  
--Retrieve All Employees and Departments, Including Those Without Matches (FULL 
--OUTER JOIN) 
--Task: Retrieve all employees and all departments, including employees without a department 
--and departments without employees. 
--Tables: 
-- Employees (EmployeeID, EmployeeName, DepartmentID) 
-- Departments (DepartmentID, DepartmentName) 


select Employee1.EmployeeName, Departments.DepartmentName from Employee1 
FULL OUTER JOIN Departments
on Employee1.DepartmentID = Departments.DepartmentID



--Assignment 5:  
--Retrieve Orders and the Customers Who Placed Them (INNER JOIN) 
--Task: Retrieve order IDs and customer names for all orders. 
--Tables: 
-- Orders (OrderID, CustomerID)

drop table Orders2

create table Orders2(
OrderID int, 
CustomerID int
);

insert into Orders2(OrderID, CustomerID)
values
(101, 111),
(102, 222),
(103, 222),
(104, 444);
 
 create table Customer5(
 CustomerID int
 );

 insert into Customer5(CustomerID)
 values
 (111),
 (222),
 (333),
 (444),
 (555);

 select * from Orders2
 select * from Customer5

select Orders2.OrderID, Customer5.CustomerID from Customer5 
INNER JOIN Orders2
on Orders2.CustomerID = Customer5.CustomerID



--Assignment 6:  
--Retrieve Orders and Customers, Including Customers Without Orders (LEFT JOIN) 
--Task: Retrieve all customers and their respective orders. Include customers even if they haven’t 
--placed any orders. 
--Tables: 
-- Orders (OrderID, CustomerID) 
-- Customers (CustomerID, CustomerName) 

-- drop table Customers 

create table Customers(
CustomerName varchar(50), 
CustomerID int
)

insert into Customers(CustomerName, CustomerID) 
values
('Ravi', 111),
('Sam', 222),
('Sara', 333),
('Joseph', 444);
 

 select * from Customers
 Select * from Orders2

 Select  Customers.CustomerName, Orders2.OrderID  From Customers 
 Left join Orders2
 On Customers.CustomerID = Orders2.CustomerID





--Assignment 7:  
--Retrieve Products and Their Categories (INNER JOIN) 
--Task: Retrieve product names and their respective category names. 
--Tables: 
-- Products (ProductID, ProductName, CategoryID) 

DROP table Products3

create table Products3(
ProductID int,
ProductName varchar(50), 
CategoryID int
);

insert into Products3(ProductID, ProductName, CategoryID) 
values
(101, 'Laptop', 111),
(102, 'Mouse', 222),
(103, 'Speaker', 333),
(104, 'CPU', 444);


create table Category(
CategoryID int,
CategoryName varchar(50)
);
insert into Category(CategoryID, CategoryName)
values
(111, 'Bluetooth'),
(222, 'Wired'),
(333, 'Bluetooth'),
(777, 'Wired');

-- drop table Category

select * from Products3
select * from Category

select Products3.ProductName, Products3.CategoryID from Products3
inner JOIN Category
ON Products3.CategoryID = Category.CategoryID


--Assignment 8:  
--Retrieve All Categories and Products, Including Categories Without Products (RIGHT 
--JOIN) 
--Task: Retrieve all categories and the products in each category. Include categories that don’t 
--have any products. 
--Tables: 
-- Products (ProductID, ProductName, CategoryID) 
-- Categories (CategoryID, CategoryName) 



select * from Products3
select * from Category

select Category.CategoryID , Products3.ProductName from Products3
RIGHT JOIN Category
on Category.CategoryID = Products3.CategoryID



--Assignment 9:  
--Retrieve Employees and Their Managers (Self-Join) 
--Task: Retrieve the employee names and the names of their managers. 
--Tables: 
-- Employees (EmployeeID, EmployeeName, ManagerID)

-- drop table Employee4

create table Employee4(
EmployeeID int,
EmployeeName varchar(50), 
ManagerID int
);

insert into Employee4(EmployeeID, EmployeeName, ManagerID) 
values
(101, 'John', 111),
(102, 'Ali', 222),
(1033, 'Sara', 333),
(104, 'Mark', 777);

select * from Employee4
Select Employee4.EmployeeName, Employee4.ManagerID from Employee4 
SELF JOIN Employee4
on Employee4.EmployeeName = Employee4.EmployeeName

--Assignment 10:  
--Get All Possible Combinations of Products and Orders (CROSS JOIN) 
--Task: Retrieve all possible combinations of products and orders (cartesian product). 
--Tables: 
-- Products (ProductID, ProductName) 
-- Orders (OrderID)

--DROP table Products4

create table Products4(
ProductID int,
ProductName varchar(50), 
);

insert into Products4(ProductID, ProductName ) 
values
(101, 'Laptop'),
(102, 'Mouse'),
(103, 'Speaker'),
(104, 'CPU');

create table Order2(
OrderID int
);
insert into Order2(OrderID)
values
(111),
(222),
(333),
(777);

-- drop table Category

select * from Products4
select * from Order2

select Products4.ProductID, Products4.ProductName, Order2.OrderID from Products4
CROSS JOIN Order2



















--SQL Server assignments using the GROUP BY and HAVING clauses 


--Assignment 1:  
--Find the Average Salary in Each Department 
--Task: Retrieve the department name and the average salary of employees in each department. 
--Only display departments where the average salary is greater than 50,000. 
--Tables: 

drop table Employee3

create table Employee3(
EmployeeName varchar(50),
Salary int,
Department varchar(50)
);

insert into Employee3(EmployeeName, Salary, Department)
values
('John', 70000, 'IT'),
('Alice', 50000, 'HR'),
('Jake', 25000, 'Finance'),
('James', 30000, 'IT'),
('Sara', 35000,'HR');

select Department from Employee3 Group by Department having avg(Salary)>50000


--Assignment 2:  
--Count the Number of Employees in Each Department 
--Task: Retrieve the department name and the total number of employees in each department. 
--Only display departments that have more than 5 employees. 
--Tables: 
-- Employees (EmployeeID, EmployeeName, DepartmentID) 

Create table Employee11(
EmployeeID int,
EmployeeName varchar(50),
DepartmentID int
);

insert into Employee11(EmployeeID, EmployeeName, DepartmentID) 
values
(101, 'John', 111),
(102, 'Ali', 222),
(103, 'Sara', 333),
(104, 'Mark', 222),
(105, 'Ava', 333),
(106, 'Anna', 111),
(107, 'alana', 222),
(108, 'Savi', 333);

select DepartmentID, count(*) as People_working from Employee11 group by DepartmentID having count(DepartmentID) > 2


--Assignment 3:  
--Find the Maximum and Minimum Salary in Each Department 
--Task: Retrieve the department name, maximum salary, and minimum salary for each 
--department. Only include departments where the minimum salary is greater than 30,000. 
--Tables: 
-- Employees (EmployeeID, EmployeeName, Salary, DepartmentID)


Create table Employee12(
EmployeeID int,
EmployeeName varchar(50),
Salary int,
DepartmentID int
);

insert into Employee12(EmployeeID, EmployeeName, Salary, DepartmentID) 
values
(101, 'John', 20000, 111),
(102, 'Ali', 35000, 222),
(103, 'Sara', 45000, 333),
(104, 'Mark',70000, 222),
(105, 'Ava', 25000, 333),
(106, 'Anna', 60000, 111),
(107, 'alana', 80000, 222),
(108, 'Savi', 40000, 333);


select DepartmentID, Max(Salary) as Max_salary , min(Salary) as Min_salary from Employee12 group by DepartmentID