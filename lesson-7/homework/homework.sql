  --Easy-Level Tasks (10)
1) Write a query to find the minimum (MIN) price of a product in the Products table.
  select MIN(Price) as min_price from Products;

2)Write a query to find the maximum (MAX) Salary from the Employees table.
  select MAX(Salary) as max_salary from Employees;

3)Write a query to count the number of rows in the Customers table.
  select count(*) as total_customers from Customers;

4)Write a query to count the number of unique product categories from the Products table.
  select count(distinct Category) as unique_categories from Products;

5)Write a query to find the total sales amount for the product with id 7 in the Sales table.
  select SUM(Amount) as total_sales from Sales where ProductID = 7;

6)Write a query to calculate the average age of employees in the Employees table.
  select AVG(Age) AS avg_age from Employees;

7)Write a query to count the number of employees in each department.
  select DeptID, count(*) as emp_count from Employees group by DeptID;

8)Write a query to show the minimum and maximum Price of products grouped by Category. Use products table.
  select Category, MIN(Price) as min_price, MAX(Price) AS max_price from Products group by Category;

9)Write a query to calculate the total sales per Customer in the Sales table.
  select CustomerID, SUM(Amount) as total_sales from Sales group byCustomerID;

10)Write a query to filter departments having more than 5 employees from the Employees table.(DeptID is enough, if you dont have DeptName). 
  select DeptID, count(*) as EmployeeCount from Employees group by DeptID having count(*) > 5;

  --Medium-Level Tasks (9)
11)Write a query to calculate the total sales and average sales for each product category from the Sales table.
12)Write a query to count the number of employees from the Department HR.
13)Write a query that finds the highest and lowest Salary by department in the Employees table.(DeptID is enough, if you dont have DeptName).
14)Write a query to calculate the average salary per Department.(DeptID is enough, if you dont have DeptName).
15)Write a query to show the AVG salary and COUNT(*) of employees working in each department.(DeptID is enough, if you dont have DeptName).
16)Write a query to filter product categories with an average price greater than 400.
17)Write a query that calculates the total sales for each year in the Sales table.
18)Write a query to show the list of customers who placed at least 3 orders.
19) Write a query to filter out Departments with average salary expenses greater than 60000.(DeptID is enough, if you dont have DeptName).

  --Hard-Level Tasks (6)
20)Write a query that shows the average price for each product category, and then filter categories with an average price greater than 150.
21)Write a query to calculate the total sales for each Customer, then filter the results to include only Customers with total sales over 1500.
22)Write a query to find the total and average salary of employees in each department, and filter the output to include only departments with an average salary greater than 65000.
23)Write a query to find total sales amount for the orders which costs more than $50 for each customer along with their least purchases.(least amount might be lower than $50).
24)Write a query that calculates the total sales and counts unique products sold in each month of each year, and then filter the months with at least 2 products sold.(Orders)
25)Write a query to find the MIN and MAX order quantity per Year. From orders table.
