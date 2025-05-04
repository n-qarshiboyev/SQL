--Easy-Level Tasks (10)

1) Bulk Insert is used when we want to insert a file from our local files.
  Example: 
BULK INSERT Stundents --example table name
FROM 'Dekstop/Downloads/list.txt' --example file path
WITH (
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2
)

2) Four file formats that can be imported into SQL Server:
CSV (Comma-Separated Values)
Common format for spreadsheets and exported data.
Delimited by commas; easy to handle and widely supported.

--Example of what can be found .csv file
ID,Name,Department
1,John Doe,IT
2,Jane Smith,HR
3,Mike Branch,Management

BULK INSERT Employees
FROM 'C:\Data\employees.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
)

  
  
TXT (Plain Text Files)
Usually delimited.
Simple and flexible for structured data.

--Example of what can be found in .txt file
101|Laptop|1500
102|Mouse|25
103|Headphones|55

BULK INSERT Products
FROM 'C:\Data\products.txt'
WITH (
    FIELDTERMINATOR = '|',
    ROWTERMINATOR = '\n'
)
  
  
XML (eXtensible Markup Language)
Used for hierarchical data.
Can be imported using specialized XML functions or tools like OPENXML.

  
JSON (JavaScript Object Notation)
Used for semi-structured data.
Imported using functions like OPENJSON or tools like SQL Server Integration Services.

3 & 4) 
create table Products (ProductID int primary key, Productname varchar (50),Price decimal (10,2))
insert into Products (ProductID, Productname, Price) values (1,'iPhone', 1199)
insert into Products (ProductID, Productname, Price) values (2,'Samsung', 1099)
insert into Products (ProductID, Productname, Price) values (3,'Xiaomi', 999)
select * from Products


5)
NULL- --it means that we can enter leave the column or a row empty.]
--Example, adding null to our table we made in the previous step. Leaving our Productname space empty. Since we already added primary key to our ProductID column it won't accept nulls

  insert into Products (ProductID, Price) values (4, 888)

NOT NULL - --It means the opposite of what was said in NULL. it doesn't accept empty information, we will always have to add something in there. 
--Example, we can't add null to our ProductID column, we will have an error message like this: 

   insert into Products (Productname, Price) values ('Nokia', 888)
Cannot insert the value NULL into column 'ProductID', table 'f28-class3.dbo.Products'; column does not allow nulls. INSERT fails.

6)
--Here's an unique constraint added to our Productname column 

alter table Products
add CONSTRAINT Unique_name unique (Productname)
7)
-- Unique constraint is used to avoid duplicates. It can be more useful in IDs column or something like that where duplicates are not likely to to occur. 
  
8)  
--A new table called Categories with an unique name constraint

create table Categories(CategoryID int primary key, CategoryName int, constraint unique_ctgname unique (CategoryName))

9)
-- Identity is used when we don't want to count & enter ID numbers manually. In the example below, identity is used to automate the value of ID. 
create table students (id int identity(1,1), name varchar (50), age int)
insert into students values ('alex', 21)
insert into students values ('joe', 22)
select * from students


--Medium-Level Tasks (10)
10)
Bulk insert Products 
from 'Dekstop/Downloads/Products.txt'
with (
firstrow = 2, 
fieldterminator = ',',
rowterminator = '\n'  
)
  
11)

alter table Categories
add CONSTRAINT fk_id foreign key (CategoryID) references Products(ProductID)


12)

Primary Key does not allow nulls and avoids duplicates, meanwhile unique key allows a single null. 
Another difference is that, when primary key is used we can't use another key together in that same column with the primary key, but we can use different keys
together with a unique key. Primary keys represents the main identifier for a row — it defines the entity's identity.
Unique key enforces additional uniqueness where needed, like in email or username columns.
  

--Example: 

create table Customers (CustomerID INT PRIMARY KEY, Email VARCHAR(100) UNIQUE, Username VARCHAR(50) UNIQUE)

--CustomerID must be unique and can't be null, email and username must be unique but can be null for one time each. 


13)
alter table Products
add constraint CHK_Price check (Price > 0)

--this checks the price value is always more than zero

14)

alter table Products
add Stock int not null default 0

-- this makes default value of the Stock is zero when not entered

15)

Select ProductID, Productname, ISNULL(Price, 0) as Price from Products 

-- this replaces nulls with a zero when price isn't entered.


16)
--Describe the purpose and usage of FOREIGN KEY constraints in SQL Server.
The foreign key constraints are used to create a relation between data types. For example we can add foreign key to relate customers' emails with their ID or Full name. 
Here's an example: 

-- First table
CREATE TABLE Customers (CustomerID INT PRIMARY KEY,FullName VARCHAR(100),Email VARCHAR(100))

-- Second table with FOREIGN KEY
CREATE TABLE Orders (OrderID INT PRIMARY KEY,OrderDate DATE,BuyerID INT,FOREIGN KEY (BuyerID) REFERENCES Customers(CustomerID))



Hard-Level Tasks (10)

17) 
create table Customers (CustomerID int primary key, CustomerName varchar (50), CustomerAge int, constraint check_age  check (CustomerAge > 18))

18) 
create table Stocks (Quantity int identity (100,10), Price decimal (10,2))

19) 
create table Order_Details (BuyerID int, OrderID int, Amount int, Price decimal (10,2), primary key (BuyerID, OrderID))

20)
ISNULL and COALESCE are both used to handle null values but they have some differences. ISNULL is used when we need to 
one value to show something else than null, but COALESCE can be used for several values at the same time. 
  
--Example 
SELECT ISNULL(NULL, 'N/A')  -- Result: 'N/A'

SELECT COALESCE(NULL, NULL, 'Hello', 'World')  -- Result: 'Hello'
  
21)
create table Employees1 (EmpID int not null, Empname varchar (50), EmpEmail varchar (100), primary key (EmpID), unique (EmpEmail))

22)
create table Buyers(BuyersID int primary key, Name varchar (50))
create table Purchases (
    PurchaseID int primary key,
    CustomerID int,
    Price decimal(10,2),
    constraint FK_pur_cus
        foreign key (CustomerID)
        references Buyers(BuyersID)
        ON DELETE CASCADE
        ON UPDATE CASCADE)
