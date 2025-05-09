-- Easy-Level Tasks

1) Write a query that uses an alias to rename the ProductName column as Name in the Products table.
  select ProductName as Name from Products;

2) Write a query that uses an alias to rename the Customers table as Client for easier reference.
  select * from Customer as Client;

3) Use UNION to combine results from two queries that select ProductName from Products and ProductName from Products_Discounted.
  select ProductName from Products union select ProductName from Products_Discounted;

4) Write a query to find the intersection of Products and Products_Discounted tables using INTERSECT.
  select * from Products intersect select * from Products_Discounted;

5) Write a query to select distinct customer names and their corresponding Country using SELECT DISTINCT.
  select distinct FirstName, Country from Customers;

6) Write a query that uses CASE to create a conditional column that displays 'High' if Price > 1000, and 'Low' if Price <= 1000 from Products table.
  select case when Price > 1000 then 'High',
              when Price < 1000 then 'Low' end as High_Low from Products;

7) Use IIF to create a column that shows 'Yes' if Stock > 100, and 'No' otherwise (Products_Discounted table, StockQuantity column).
  select IIF(StockQuantity > 100, 'Yes', 'No') from Product_discounted;


--Medium-Level Tasks

8) Use UNION to combine results from two queries that select ProductName from Products and ProductName from Products_Discounted tables.
  select ProductName from Products2 union select ProductName from Products_Discounted; 

9) Write a query that returns the difference between the Products and Products_Discounted tables using EXCEPT.
  select * from Products except select * from Products_Discounted;

10) Create a conditional column using IIF that shows 'Expensive' if the Price is greater than 1000, and 'Affordable' if less, from Products table.
  select IIF(Price > 1000, 'Expensive', 'Affordable') from Products;

11) 

