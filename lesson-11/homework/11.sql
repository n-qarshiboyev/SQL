1) 
    Return: OrderID, CustomerName, OrderDate
    Task: Show all orders placed after 2022 along with the names of the customers who placed them.
    Tables Used: Orders, Customers

    select o.OrderID, c.CustomerID, o.OrderDate from orders o 
    join Customers c on o.CustomerID = c.CustomerID
    where year(o.OrderDate) > 2022-01-01; 

2) 
    Return: EmployeeName, DepartmentName
    Task: Display the names of employees who work in either the Sales or Marketing department.
    Tables Used: Employees, Departments

    select e.name as EmployeeName, d.departmentname from Employees e 
    join Departments d on e.DepartmentID = d.DepartmentID
    where d.departmentname in ('Sales', 'Marketing')

3) 
    Return: DepartmentName, MaxSalary
    Task: Show the highest salary for each department.
    Tables Used: Departments, Employees

    select d.DepartmentName, max(e.salary) as MaxSalary from Departments d 
    join Employees e on d.DepartmentID = e.DepartmentID
    group by d.DepartmentName;

4)
    Return: CustomerName, OrderID, OrderDate
    Task: List all customers from the USA who placed orders in the year 2023.
    Tables Used: Customers, Orders

    select c.firstname + ' ' + c.lastname as CustomerName, o.OrderID, o.OrderDate from Customers c 
    join Orders o on c.CustomerID = o.CustomerID
    where c.Country = 'USA' and year(o.OrderDate) = 2023;

5) 
    Return: CustomerName, TotalOrders
    Task: Show how many orders each customer has placed.
    Tables Used: Orders , Customers

    select c.firstname + ' ' + c.lastname as CustomerName, count(o.quantity) as TotalOrders from Customers c 
    left join Orders o on c.customerid = o.customerid
    group by c.firstname, c.lastname;
    
6) 
    Return: ProductName, SupplierName
    Task: Display the names of products that are supplied by either Gadget Supplies or Clothing Mart.
    Tables Used: Products, Suppliers

    select p.ProductName, s.SupplierName from products p
    join suppliers s on p.SupplierID = s.SupplierID
    where s.SupplierName in ('Gadget Supplies', 'Clothing Mart');

7)
    Return: CustomerName, MostRecentOrderDate
    Task: For each customer, show their most recent order. Include customers who havent placed any orders.
    Tables Used: Customers, Orders

    select c.firstname + ' ' + c.lastname as CustomerName, max(o.orderdate) as MostRecentOrderDate from customers c 
    left join orders o on c.CustomerID = o.CustomerID
    group by c.firstname, c.lastname;


-------

8)
    Return: CustomerName, OrderTotal
    Task: Show the customers who have placed an order where the total amount is greater than 500.
    Tables Used: Orders, Customers

    select c.firstname + ' ' + c.lastname as Customername, o.TotalAmount as OrderTotal from customers c 
    left join orders o on c.customerid = o.customerid 
    where o.totalamount > 500;

9)
    Return: ProductName, SaleDate, SaleAmount
    Task: List product sales where the sale was made in 2022 or the sale amount exceeded 400.
    Tables Used: Products, Sales

    select p.ProductName, s.saledate, s.SaleAmount from products p 
    left join sales s on p.ProductID = s.ProductID 
    where year(s.saledate) = 2022 and s.SaleAmount > 400; 

10)
    Return: ProductName, TotalSalesAmount
    Task: Display each product along with the total amount it has been sold for.
    Tables Used: Sales, Products

    select p.ProductName, max(s.SaleAmount) as TotalSalesAmount from products p 
    left join sales s on p.ProductID = s.productid 
    group by p.ProductName;

11)
    Return: EmployeeName, DepartmentName, Salary
    Task: Show the employees who work in the HR department and earn a salary greater than 60000.
    Tables Used: Employees, Departments

    select e.name as EmployeeName, d.departmentname, e.salary from employees e 
    left join departments d on e.departmentid = d.departmentid
    where d.departmentid = 2 and e.salary > 60000;

12) 
    Return: ProductName, SaleDate, StockQuantity
    Task: List the products that were sold in 2023 and had more than 100 units in stock at the time.
    Tables Used: Products, Sales

    select p.productname, s.saledate, p.stockquantity from products p 
    left join sales s on p.productid = s.productid
    where year (s.saledate) = 2023 and p.stockquantity > 100;

13) 
    Return: EmployeeName, DepartmentName, HireDate
    Task: Show employees who either work in the Sales department or were hired after 2020.
    Tables Used: Employees, Departments

    select e.name as EmployeeName, d.departmentname, e.HireDate from employees e 
    left join departments d on e.DepartmentID = d.DepartmentID
    where d.departmentname = 'Sales' and year(e.hiredate) > 2020-01-01;

-----
14)
    Return: CustomerName, OrderID, Address, OrderDate
    Task: List all orders made by customers in the USA whose address starts with 4 digits.
    Tables Used: Customers, Orders

    select c.firstname + ' ' + c.lastname, o.OrderID, c.address, o.orderdate from customers c 
    left join orders o on c.CustomerID = o.CustomerID
    where c.Country = 'USA' and c.Address like '[0-9][0-9][0-9][0-9]%';
    
15) 
    Return: ProductName, Category, SaleAmount
    Task: Display product sales for items in the Electronics category or where the sale amount exceeded 350.
    Tables Used: Products, Sales

    select p.ProductName, p.category, s.SaleAmount from Products p 
    left join sales s on p.productid = s.ProductID
    where p.Category = 'Electronics' and s.SaleAmount > 350;

16) 
    Return: CategoryName, ProductCount
    Task: Show the number of products available in each category.
    Tables Used: Products, Categories

    select c.CategoryName, count(p.stockquantity) 
    as ProductCount from Categories c 
    join products p on c.categoryid = p.Category
    group by c.CategoryName; 

17)
    Return: CustomerName, City, OrderID, Amount
    Task: List orders where the customer is from Los Angeles and the order amount is greater than 300.
    Tables Used: Customers, Orders

    select c.firstname + ' ' + c.lastname as CustomerName, c.City, o.OrderID, o.TotalAmount as Amount from Customers c
    join Orders o on c.CustomerID = o.CustomerID
    where c.City = 'Los Angeles' and o.TotalAmount > 300
    order by  o.TotalAmount desc;

18) 
    Return: EmployeeName, DepartmentName
    Task: Display employees who are in the HR or Finance department, or whose name contains at least 4 vowels.
    Tables Used: Employees, Departments

    select e.name as EmployeeName, d.DepartmentName from Employees e 
    join Departments d on d.DepartmentID = e.DepartmentID
    where d.DepartmentName in ('HR', 'Finance') or 
    e.name like '%[a-u-i-e]';

19)
    Return: EmployeeName, DepartmentName, Salary
    Task: Show employees who are in the Sales or Marketing department and have a salary above 60000.
    Tables Used: Employees, Departments

    select e.name as EmployeeName, d.DepartmentName, e.salary from Employees e 
    join Departments d on d.DepartmentID = e.DepartmentID
    where d.DepartmentName in ('Sales', 'Marketing') and e.salary > 60000;
    

















