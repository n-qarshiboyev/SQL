-- Easy-Level Tasks (9)

1 - Using the Employees and Departments tables, write a query to return the names and salaries of employees whose salary is greater than 50000, along with their department names.
🔁 Expected Columns: EmployeeName, Salary, DepartmentName

2 - Using the Customers and Orders tables, write a query to display customer names and order dates for orders placed in the year 2023.
🔁 Expected Columns: FirstName, LastName, OrderDate

3 - Using the Employees and Departments tables, write a query to show all employees along with their department names. Include employees who do not belong to any department.
🔁 Expected Columns: EmployeeName, DepartmentName

4 - Using the Products and Suppliers tables, write a query to list all suppliers and the products they supply. Show suppliers even if they don’t supply any product.
🔁 Expected Columns: SupplierName, ProductName

5 - Using the Orders and Payments tables, write a query to return all orders and their corresponding payments. Include orders without payments and payments not linked to any order.
🔁 Expected Columns: OrderID, OrderDate, PaymentDate, Amount

6 - Using the Employees table, write a query to show each employees name along with the name of their manager.
🔁 Expected Columns: EmployeeName, ManagerName

7 - Using the Students, Courses, and Enrollments tables, write a query to list the names of students who are enrolled in the course named 'Math 101'.
🔁 Expected Columns: StudentName, CourseName

8 - Using the Customers and Orders tables, write a query to find customers who have placed an order with more than 3 items. Return their name and the quantity they ordered.
🔁 Expected Columns: FirstName, LastName, Quantity

9 - Using the Employees and Departments tables, write a query to list employees working in the 'Human Resources' department.
🔁 Expected Columns: EmployeeName, DepartmentName

-- Medium-Level Tasks (9)
11 - Using the Employees and Departments tables, write a query to return department names that have more than 5 employees.
🔁 Expected Columns: DepartmentName, EmployeeCount

12 - Using the Products and Sales tables, write a query to find products that have never been sold.
🔁 Expected Columns: ProductID, ProductName

13 - Using the Customers and Orders tables, write a query to return customer names who have placed at least one order.
🔁 Expected Columns: FirstName, LastName, TotalOrders

14 - Using the Employees and Departments tables, write a query to show only those records where both employee and department exist (no NULLs).
🔁 Expected Columns: EmployeeName, DepartmentName

15 - Using the Employees table, write a query to find pairs of employees who report to the same manager.
🔁 Expected Columns: Employee1, Employee2, ManagerID

16 - Using the Orders and Customers tables, write a query to list all orders placed in 2022 along with the customer name.
🔁 Expected Columns: OrderID, OrderDate, FirstName, LastName

17 - Using the Employees and Departments tables, write a query to return employees from the 'Sales' department whose salary is above 60000.
🔁 Expected Columns: EmployeeName, Salary, DepartmentName

18 - Using the Orders and Payments tables, write a query to return only those orders that have a corresponding payment.
🔁 Expected Columns: OrderID, OrderDate, PaymentDate, Amount

Using the Products and Orders tables, write a query to find products that were never ordered.
🔁 Expected Columns: ProductID, ProductName

-- Hard-Level Tasks (9)
19 - Using the Employees table, write a query to find employees whose salary is greater than the average salary in their own departments.
🔁 Expected Columns: EmployeeName, Salary

20 - Using the Orders and Payments tables, write a query to list all orders placed before 2020 that have no corresponding payment.
🔁 Expected Columns: OrderID, OrderDate

21 - Using the Products and Categories tables, write a query to return products that do not have a matching category.
🔁 Expected Columns: ProductID, ProductName

22 - Using the Employees table, write a query to find employees who report to the same manager and earn more than 60000.
🔁 Expected Columns: Employee1, Employee2, ManagerID, Salary

23 - Using the Employees and Departments tables, write a query to return employees who work in departments which name starts with the letter 'M'.
🔁 Expected Columns: EmployeeName, DepartmentName

24 - Using the Products and Sales tables, write a query to list sales where the amount is greater than 500, including product names.
🔁 Expected Columns: SaleID, ProductName, SaleAmount

25 - Using the Students, Courses, and Enrollments tables, write a query to find students who have not enrolled in the course 'Math 101'.
🔁 Expected Columns: StudentID, StudentName

26 - Using the Orders and Payments tables, write a query to return orders that are missing payment details.
🔁 Expected Columns: OrderID, OrderDate, PaymentID

27- Using the Products and Categories tables, write a query to list products that belong to either the 'Electronics' or 'Furniture' category.
🔁 Expected Columns: ProductID, ProductName, CategoryName
