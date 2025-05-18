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
  select sum()
12)Write a query to count the number of employees from the Department HR.
  select DeptID, count('HR') from Employees group by DeptID;
13)Write a query that finds the highest and lowest Salary by department in the Employees table.(DeptID is enough, if you dont have DeptName).
  select DeptID, max(distinct Salary) as highest_salary, min(distinct Salary) as lowest_salary from Employees group by DeptID;
14)Write a query to calculate the average salary per Department.(DeptID is enough, if you dont have DeptName).
  select DeptID, avg(Salary) as average_salary from Employees group by DeptID;  
15)Write a query to show the AVG salary and COUNT(*) of employees working in each department.(DeptID is enough, if you dont have DeptName).
  select DeptID, avg(salary) as avg_salary, count(employeeid) as number_of_worker from employees group by DeptID;   
16)Write a query to filter product categories with an average price greater than 400.
  select Category, avg(Price) from Products group by Category having avg(Price) > 400;
17)Write a query that calculates the total sales for each year in the Sales table.
  select year(saledate) as each_year, sum(saleamount) as total_sales from Sales group by year(saledate) order by each_year;
18)Write a query to show the list of customers who placed at least 3 orders.
  select customerID, count(orderID) as Orders from Customers group by customerID having count(orderID) =< 3;
19) Write a query to filter out Departments with average salary expenses greater than 60000.(DeptID is enough, if you dont have DeptName).
  select DeptID, avg(Salary) as avg_salary from Employees group by DeptID having avg(Salary) > 60000;
  --Hard-Level Tasks (6)
20)Write a query that shows the average price for each product category, and then filter categories with an average price greater than 150.
  select Category, AVG(price) as average_price from Products group by Category having AVG(price) > 150;
21)Write a query to calculate the total sales for each Customer, then filter the results to include only Customers with total sales over 1500.
  select customer_id, sum(sale_amount) as total_sales from sales group by customer_id having sum(sale_amount) > 1500;
22)Write a query to find the total and average salary of employees in each department, and filter the output to include only departments with an average salary greater than 65000.
  select department_id, sum(salary) as total_salary, avg(salary) as average_salary from employees group by department_id having avg(salary) > 65000;
23)Write a query to find total sales amount for the orders which costs more than $50 for each customer along with their least  purchases.(least amount might be lower than $50).
  select customer_id, sum(case when order_amount > 50 then order_amount else 0 end) as total_sales_over_50, min(order_amount) as least_purchase from orders group by customer_id;
24)Write a query that calculates the total sales and counts unique products sold in each month of each year, and then filter the months with at least 2 products sold.(Orders)
  select year(order_date) as year, month(order_date) as month, sum(sale_amount) as total_sales, c
25)Write a query to find the MIN and MAX order quantity per Year. From orders table.
  select year(order_date) as year, min(order_quantity) as min_quantity, max(order_quantity) as max_quantity from orders group by year(order_date);
