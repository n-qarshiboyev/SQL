-- create table
create table employees (empid int, name varchar(50), salary decimal(10, 2))

-- insert
insert into employees (empid, name, salary) 
values (1, 'brandon', 6100.00)
insert into employees (empid, name, salary) 
values (2, 'bob', 5200.00), (3, 'mike', 5700.00)

-- update
update employees 
set salary = 7000.00 
where empid = 1

-- delete
delete from employees 
where empid = 2

-- alter
alter table employees 
alter column name varchar(100)
alter table employees 
add department varchar(50)
alter table employees 
alter column salary float

-- departments table
create table departments (departmentid int primary key, departmentname varchar(50))
alter table departments
add salary decimal(10,2)

-- removing employees table
truncate table employees

-- inserting into departments
select * from departments
insert into departments (departmentid, departmentname)
select 1, 'management' union all
select 2, 'hr' union all
select 3, 'finance' union all
select 4, 'it' union all
select 5, 'marketing'
update departments 
set salary = 5000
where departmentid = 1       

-- removing employees table
truncate table employees

alter table employees
drop column department

-- renaming
exec sp_rename 'employees', 'staffmembers'

-- complete removal
drop table departments



create table Products(ProductID int primary key, ProductName varchar(50), Category varchar(50), Price decimal(10,2))
alter table Products
add StockQuantity  int default 50

exec sp_rename 'Products.Category',  'ProductCategory'

select * from Products

insert into products (productid, productname, productcategory, price, stockquantity)
values (1, 'Carrots', 'Vegetables', 1, 50)

insert into products (productid, productname, productcategory, price, stockquantity)
values (2, 'Apples', 'Fruits', 2, 50)

insert into products (productid, productname, productcategory, price, stockquantity)
values (3, 'Tables', 'Furniture', 50.00, 50)

insert into products (productid, productname, productcategory, price, stockquantity)
values (4, 'Coca Cola', 'Drinks', 2, 50)

insert into products (productid, productname, productcategory, price, stockquantity)
values (5, 'Blender', 'Electronics', 20.00, 50)


--back up
select * into products_backup
from products;

--rename 
exec sp_rename 'Products', 'Inventory';
alter table Inventory
alter column Price float;

--adding indentity
alter table inventory
add Productcode int identity(1000, 5);

select * from Inventory
