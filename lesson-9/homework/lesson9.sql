--easy
  1.	select p.productname, s.suppliername from products p cross join suppliers s;
	2.	select d.departmentname, e.employeename from departments d cross join employees e;
	3.	select s.suppliername, p.productname from products p join suppliers s on p.supplierid = s.supplierid;
	4.	select c.customername, o.orderid from customers c join orders o on c.customerid = o.customerid;
	5.	select s.studentname, c.coursename from students s cross join courses c;
	6.	select p.productname, o.orderid from products p join orders o on p.productid = o.productid;
	7.	select e.employeename from employees e join departments d on e.departmentid = d.departmentid;
	8.	select s.studentname, e.courseid from students s join enrollments e on s.studentid = e.studentid;
	9.	select o.orderid from orders o join payments p on o.orderid = p.orderid;
	10.	select o.orderid, p.productname from orders o join products p on o.productid = p.productid where p.price > 100;

--medium
	11.	select e.employeename, d.departmentname from employees e, departments d where e.departmentid != d.departmentid;
	12.	select o.orderid, p.productname from orders o join products p on o.productid = p.productid where o.quantity > p.quantity;
	13.	select c.customername, s.productid from customers c join sales s on c.customerid = s.customerid where s.amount >= 500;
	14.	select s.studentname, c.coursename from students s join enrollments e on s.studentid = e.studentid join courses c on e.courseid = c.courseid;
	15.	select p.productname, s.suppliername from products p join suppliers s on p.supplierid = s.supplierid where s.suppliername like '%tech%';
	16.	select o.orderid, p.paymentamount from orders o join payments p on o.orderid = p.orderid where p.paymentamount < o.totalamount;
	17.	select e.employeename, d.departmentname from employees e join departments d on e.departmentid = d.departmentid;
	18.	select p.productname from products p join categories c on p.categoryid = c.categoryid where c.categoryname in ('electronics', 'furniture');
	19.	select s.* from sales s join customers c on s.customerid = c.customerid where c.country = 'usa';
	20.	select o.orderid from orders o join customers c on o.customerid = c.customerid where c.country = 'germany' and o.totalamount > 
--hard
	21.	select e1.employeename as emp1, e2.employeename as emp2 from employees e1, employees e2 where e1.departmentid != e2.departmentid;
	22.	select p.paymentid, p.amount, o.quantity, pr.price from payments p join orders o on p.orderid = o.orderid join products pr on o.productid = pr.productid where p.amount != o.quantity * pr.price;
	23.	select s.studentname from students s left join enrollments e on s.studentid = e.studentid where e.courseid is null;
	24.	select m.employeename as manager, e.employeename as employee from employees e join employees m on e.managerid = m.employeeid where m.salary <= e.salary;
	25.	select c.customername from customers c join orders o on c.customerid = o.customerid left join payments p on o.orderid = p.orderid where p.paymentid is null;
