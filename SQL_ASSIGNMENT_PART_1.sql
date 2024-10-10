--Assignment 1 : Create a Database and Table

create database CompanyDB

use CompanyDB

create table Employees(
EmployeeID int NOT NULL PRIMARY KEY,
FirstName varchar(50),
LastName varchar(50),
Department varchar(50),
Salary Decimal(10,2)
);

--Assignment 2: Insert Data into a Table

-- Insert the following records into the Employees table:
--	John Doe, HR, 50000
--	Jane Smith, IT, 60000
--	David Lee, Marketing, 55000

insert into Employees(EmployeeID, FirstName, LastName, Department, Salary)
values
--(1, 'John','Doe', 'HR',50000),
(2, 'Jane', 'Smith', 'IT', 60000),
(3,'David', 'Lee', 'Marketing', 55000);

--Assignmennt 3

--Retrieve all employee records from the Employees table.
select * from Employees

--Retrieve the FirstName, LastName, and Salary of employees in the IT department and salary greater than 5000

select FirstName, LastName, Salary from Employees where Department = 'IT' AND salary > 5000;

--Find the highest salary from the Employees table.
select max(Salary) as Max_Salary from Employees;

--Assignment 4: Update Data in a Table

--Update the salary of John Doe to 55000.

Update Employees
set Salary = 70000
Where FirstName = 'John'

--Change the department of Jane Smith to Marketing.
Update Employees
set Department = 'Marketing'
Where FirstName = 'Jane'

--Assignment 5: Delete Data from a Table

--Delete the record of David Lee from the Employees table.

delete from Employees
where FirstName = 'David'
 select * from Employees
--Delete all employees in the Marketing department.


delete from Employees
where Department = 'Marketing'
select * from Employees


--Assignment 6: Product Management

--1. Create a tabled named Products and insert below records in the table.


create table Products(
ProductID int NOT NULL PRIMARY KEY,
ProductName varchar (60),
Category varchar(60),
Price int,
Stock int
);

insert into Products(ProductID, ProductName, Category, Price, Stock)
values
(1, 'Laptop','Electronics',1000, 50),
(2, 'Mouse', 'Electronics', 20, 200),
(3, 'Keyboard', 'Electronics', 30, 150),
(4, 'Printer', 'Electtronics', 150, 75);


--2. Select all columns from the Products table

--select * from Products

--3. Select products, sorted by their price in descending order.

select * from Products 
Order BY Price DESC

--4. Update the price of the "Mouse" to 25.

update Products
set Price = 25
where ProductName = 'Mouse'


--5. Delete the product with ProductID 2 (Mouse).

delete from Products
where ProductID = 2


--6. Select products sorted by ProductName in alphabetical order.

select * from Products
Order By ProductName ASC


--Assignment 7: Library Management

--1. Create a tabled named Books with the below structure and insert below records in the
--table.
create table Books(
BookID int NOT NULL PRIMARY KEY,
Title varchar (50),
Author varchar (50),
PublishedYear int,
AvailableCopies int
);

insert into Books(BookID, Title, Author, PublishedYear, AvailableCopies)
values
(1, 'The Great Gatsby', 'F. Scott Fitzgerald', 1925, 3),
(2, '1984', 'George Orwell', 1949, 2),
(3, 'To Kill a Mockingbird', 'Harper Lee', 1960, 5),
(4, 'Brave New World', 'Aldous Huxley', 1932, 4);

select * from Books

--2. Update the available copies of "1984" to 5.
update Books
Set AvailableCopies = 5
where Title = '1984'

--3. Delete the book with BookID 1 (The Great Gatsby).
delete from Books
where BookID = 1


--4. Write a query to Select books published after 1950.

select * from Books
where PublishedYear > 1950



--Assignment 8: Customer Management

--1. Create a Customers table containing details about customers with the below details.

create table Customer(
CustomerID int NOT NULL PRIMARY KEY,
CustomerName varchar(60),
Email varchar(60),
PhoneNumber varchar(90)
);

insert into Customer(CustomerID, CustomerName, Email, PhoneNumber)
values
(201, 'Alice Johnson', 'alice@example.com', '555-1234'),
(202, 'Bob Smith', 'bob@example.com', '555-5678'),
(203, 'Charlie Brown', 'charlie@example.com', '555-8765');

select * from Customer




--2. Insert a new customer into the Customers table with the following details:
	--a. CustomerID: 204
	--b. CustomerName: David Wilson
	--c. Email: david@example.com
	--d. PhoneNumber: 555-4321
insert into Customer(CustomerID, CustomerName, Email, PhoneNumber)
values
(204, 'David Wilson', 'david@example.com', '555-4321');

select * from Customer


--3. Update the phone number of "Alice Johnson" to "555-9999".

update Customer 
set PhoneNumber = 555-9999
where CustomerName = 'Alice Johnson'

select * from Customer
--4. Delete the customer with CustomerID 202 (Bob Smith).

delete from Customer
where CustomerID = 202



--Assignment 9: Orders Management

--1. Create an Orders table that contains information about customer orders with the below
--details:

create table Orders(
OrderID int NOT NULL PRIMARY KEY,
CustomerID int,
OrderDate varchar(60),
TotalAmount varchar(60)

);

insert into Orders(OrderID, CustomerID, OrderDate, TotalAmount)
values
(301, 201, '2024-09-01', '250.00'),
(302, 202, '2024-09-02', '150.00'),
(303, 203, '2024-09-03', '200.00');

select * from Orders

--Insert a new order into the Orders table with the following details:
	--a. OrderID: 304
	--b. CustomerID: 204
	--c. OrderDate: 2024-09-04
	--d. TotalAmount: 300.00

insert into Orders(OrderID, CustomerID, OrderDate, TotalAmount)
values
(304, 204, '2024-09-04', '300.00');

--3. Update the TotalAmount for OrderID 301 to 275.00.

update Orders
set TotalAmount = '275.00'
where OrderID = 301


--4. Delete the order with OrderID 302.

delete from Orders
where OrderID = 302

select * from Orders

--5. Select orders with a total amount greater than 200.

select * from Orders where TotalAmount > '200.00'


--6. Select only the OrderID and TotalAmount for all orders.

select * from Orders 


--Types of keys
--Assignment 10: Primary Key
--Task:
--Create a Students table with a StudentID as the primary key and include the following columns:
--FirstName, LastName, and Email. Insert three records into the table.

create table Students(
StudentID int NOT NULL PRIMARY KEY,
FirstName varchar(60),
LastName varchar(60),
Email varchar(60)
);


insert into Students(StudentID, FirstName, LastName, Email)
values
(1, 'John', 'Doe', 'john.doe@example.com'),
(2, 'Jane', 'Smith', 'jane.smith@example.com'),

(3, 'Mike', 'Johnson', 'mike.johnson@example.com');


select * from Students


--Assignment 11: Foreign Key
--Task:
--Create a Courses table with a CourseID as the primary key. Create a Enrollments table with a
--StudentID as a foreign key referencing the Students table and a CourseID as a foreign key
--referencing the Courses table. Insert sample data into both tables.

create table Courses(
CourseID int NOT NULL PRIMARY KEY,
CourseName varchar(60)
);

insert into Courses(CourseID, CourseName)
values
(123, 'maths'),
(321, 'biology');

create table Enrollments(
EnrollmentID int PRIMARY KEY,
StudentID int,
CourseID int,
FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

insert into Enrollments(EnrollmentID, StudentID, CourseID)
values
(1, 1, 123),  
(2, 2, 321),  
(3, 1, 321);  

select * from Courses;
select * from Enrollments;



--Assignment 12: Composite Key 
--Task:  
--Create an OrderDetails table that contains OrderID, ProductID, and Quantity. Define a 
--composite primary key using OrderID and ProductID. 


create table OrderDetails(
OrderID int,
ProductID int,
Quantity int,
Primary Key(OrderID, ProductID)
);


--Assignment 13: Candidate Key and Alternate Key 
--Task:  
--Create a Users table with UserID as the primary key, and include Email and Username as 
--candidate keys. Set the Email column as a unique key. 

create table Users(
UserID int PRIMARY KEY,
Email varchar(50) UNIQUE,
Username VARCHAR(20)
);


--Assignment 14: Surrogate Key 
--Task:  
--Create a Products table with an AutoID as a surrogate key that automatically increments. Include 
--ProductName and Price columns. 

-- drop table Products

create table Products(
AutoID int PRIMARY KEY IDENTITY(1,1),
ProductName varchar(50),
Price VARCHAR(20)
);


--Assignment 15: Natural Key 
--Task:  
--Create a Employees table that uses SSN (Social Security Number) as a natural key. Include 
--columns for FirstName, LastName, and Position. 

--drop table Employees

create table Employees(
SSN int PRIMARY KEY ,
FirstName varchar(50),
LastName varchar(50),
Position varchar(50)
);

insert into Employees(SSN, FirstName, LastName, Position)
values
(123, 'John', 'David', 'Finance'),
(456, 'Sara', 'Sunny', 'HR');

select * from Employees


--Assignment 16: Unique Key 
--Task:  
--Create a Customers table with a CustomerID as the primary key and a PhoneNumber column 
--that must be unique.

-- DROP table Customers

create table Customers(
CustomerID int PRIMARY KEY,
PhoneNumber int UNIQUE
);




create table Employees(
EmployeeID int Primary Key, 
FirstName varchar(50) ,
LastName varchar(50) ,
Department varchar(50), 
Salary Decimal(10, 2) 
);

select * from Employees

--Views 
--Assignment 17: Basic View Creation 
--Task: 
--1. Create a simple view named EmployeeView that displays the FirstName, LastName, and 
--Department columns from the Employees table. 

CREATE VIEW EmployeesView
AS 
SELECT FirstName, LastName, Department
FROM Employees;

--2. Query the view to display the details

SELECT * FROM EmployeesView


--Assignment 18: Updating Data Through a View 
--Task: 
--1. Create a view named EditableEmployeeView that shows EmployeeID, FirstName, 
--LastName, and Salary. 


CREATE VIEW EditableEmployeeSView
AS 
SELECT EmployeeID, FirstName, LastName, Salary 
FROM Employees;

SELECT * FROM EditableEmployeeSView

--2. Update the salary of an employee using the view. 
update EditableEmployeeSView
set Salary = 25000
where EmployeeID = 2


--3. Verify the update
SELECT * FROM EditableEmployeeSView where EmployeeID = 2;

--Assignment 19: View with Calculated Columns 
 
--1. Create a view named EmployeeSalaryBonusView that displays each employee’s 
--FirstName, LastName, Salary, and a calculated column Bonus (10% of the salary). 
CREATE VIEW EmployeeSalaryBonusView
AS
SELECT FirstName, LastName, Salary*0.10 as Bonus
FROM Employees;

--2. Query the view 
SELECT * FROM EmployeeSalaryBonusView



--Assignment 20: Altering a View 

--1. Alter the EmployeeView from Assignment 1 to include a new column Salary. 

ALTER VIEW EmployeeSView
AS
SELECT FirstName, LastName, Department, Salary
FROM Employees;

--2. Verify the view with the updated column. 

select * from EmployeeSView


--Assignment 21: View with Parameters (Simulated via Filters) 

--1. Create a view named FilteredEmployeeView from employees table that displays 
--EmployeeID,FirstName,LastName & Department. 

CREATE VIEW FilteredEmployeeView
AS
SELECT EmployeeID,FirstName,LastName, Department 
FROM Employees;

--2. Use a query on the view to return employees in a specific department (e.g., 
--DepartmentID = 2). 


select * from FilteredEmployeeView
WHERE Department = 'Marketing'

--Assignment 22: Dropping a View 

--1. Drop the EmployeeView that was created in the previous assignments. 
DROP VIEW EmployeeSView



--2. Try to query the view again.
SELECT * FROM EmployeeSView



