1) 
    select p.firstname, p.lastname, a.city, a.state from person p
    left join address a on p.personid = a.personid;

2) 
    select a.name from employee a 
    join employee b on a.managerid = b.id 
    where a.salary > b.salary;

3) 
    select email from Person 
    group by email 
    having COUNT(email) > 1;

4) 
    delete from Person
    where id not in (
    select MIN(id)
    from Person
    group by email;

5)
    select dsitinct g.ParentName
    from girls g
    where g.ParentName not in (select distinct b.ParentName from boys b);

6) 
    
7)
    select c1.item, c2.item from cart1 c1
    full outer join cart2 c2 on c1.item = c2.item 
    order by ISNULL(c1.item, c2.Item)

8)
    select c.name as Customers
    from Customers c
    left join Orders o on c.id = o.customerId
    where o.id IS NULL;

9) 
    select S.student_id, S.student_name, d.subject_name,
    count(E.student_id) attended_exams
    from Students s
    cross join Subjects d
    left join Examinations e
    on s.student_id = e.student_id
    and d.subject_name = e.subject_name
    group by s.student_id, s.student_name, d.subject_name
    order by s.student_id, s.student_name, d.subject_name








    









  
