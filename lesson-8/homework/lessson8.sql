
##  Easy-Level Tasks 
1. Using Products table, find the total number of products available in each category.
  select category, count(*) as total_products from products group by category;
2. Using Products table, get the average price of products in the 'Electronics' category.
  select avg(price) as avg_price from products where category = 'electronics';
3. Using Customers table, list all customers from cities that start with 'L'.
  select * from customers where city like 'L%';
4. Using Products table, get all product names that end with 'er'.
  select productname from products where productname like '%er';
5. Using Customers table, list all customers from countries ending in 'A'.
  select * from customers where country like '%a';
6. Using Products table, show the highest price among all products.
  select max(price) as highest_price from products;
7. Using Products table, label stock as 'Low Stock' if quantity < 30, else 'Sufficient'.
  select productname, case when quantity < 30 then 'low_stock' else 'sufficient' end as stockstatus from products;
8. Using Customers table, find the total number of customers in each country.
  select country, count(*) as total_customers from customers group by country;
9. Using Orders table, find the minimum and maximum quantity ordered.
  select min(quantity) as min_qty, max(quantity) as max_qty from orders;
---

##  Medium-Level Tasks 
10. Using Orders and Invoices tables, list customer IDs who placed orders in 2023 January to find those who did not have invoices.
11. Using Products and Products_Discounted table, Combine all product names from Products and Products_Discounted including duplicates.
  select productname from products union all select productname from products_discounted;
12. Using Products and Products_Discounted table, Combine all product names from Products and Products_Discounted without duplicates.
  select productname from products union select productname from products_discounted;
13. Using Orders table, find the average order amount by year.
  select year(orderdate) as order_year, avg(amount) as avg_amount from orders group by year(orderdate);
14. Using Products table, group products based on price: 'Low' (<100), 'Mid' (100-500), 'High' (>500). Return productname and pricegroup.
  select productname, case when price < 100 then 'low' when price <= 500 then 'mid' else 'high' end as pricegroup from products;
15. Using City_Population table, use Pivot to show values of Year column in seperate columns ([2012], [2013]) and copy results to a new Population_Each_Year table.
16. Using Sales table, find total sales per product Id.
    select productid, sum(salesamount) as total_sales from sales group by productid;
17. Using Products table, use wildcard to find products that contain 'oo' in the name. Return productname.
  select productname from products where productname like '%oo%';
18. Using City_Population table, use Pivot to show values of City column in seperate columns (Bektemir, Chilonzor, Yakkasaroy)  and copy results to a new Population_Each_City table.
---
##  Hard-Level Tasks 
19. Using Invoices table, show top 3 customers with the highest total invoice amount. Return CustomerID and Totalspent.
  select top 3 customerid, sum(amount) as totalspent from invoices group by customerid order by totalspent desc;
20. Transform Population_Each_Year table to its original format (City_Population).
21. Using Products and Sales tables, list product names and the number of times each has been sold. (Research for Joins)
22. Transform Population_Each_City table to its original format (City_Population).
