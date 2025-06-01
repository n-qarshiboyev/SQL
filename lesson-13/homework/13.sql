--Easy Tasks

1) select CONCAT(emp_id, '-', first_name, ' ', last_name) as employee_info from employees;
2) update employees set phone_number = REPLACE(phone_number, '124', '999');
3) select first_name as name, length(first_name) as name_length from employees where first_name like 'A%' or first_name like 'J%' or first_name like 'M%' order by first_name;
4) select manager_id, sum(salary) as total_salary from employees group by manager_id;
5) select year, greatest(Max1, Max2, Max3) as highest_value from TestMax;
6) select * from cinema where id % 2 = 1 and description != 'boring';
7) select * from SingleOrder order by case when id = 0 then 1 else 0 end, id;
8) select COALESCE(1st, 2nd, 3rd, 4th, 5th) as first_non_null from columns;

--Medium Tasks

1) select 
    trim(FullName, ' ', 1) as Firstname,
    trim(FullName, ' ', 2) as Middlename,
    trim(FullName, ' ', 3) as Lastname
from Students;
2) select * from Orders
where customer_id in (select distinct customer_id from Orders
    where deliverystate = 'California')
and delivery_state = 'Texas';
3) SELECT group_col, 
       STRING_AGG(value_col, ', ') AS concatenated_values
FROM DMLTable
GROUP BY group_col;
4) select * from Employees
where length(lower(first_name || last_name)) 
      - length(replace(lower(first_name || last_name), 'a', '')) >= 3;
5) select department_id, count(*) as total_employees,
    count(CASE WHEN CURRENT_DATE - hire_date > INTERVAL '3 years' then 1 end) as employees_3_plus_years,
    ROUND(100.0 * count(CASE WHEN CURRENT_DATE - hire_date > INTERVAL '3 years' then 1 end) / count(*),2) as percent_3_plus_years from Employees group by department_id;
6) SELECT job_description,
       FIRST_VALUE(spaceman_id) OVER (PARTITION BY job_description ORDER BY experience_years DESC) AS most_experienced,
       FIRST_VALUE(spaceman_id) OVER (PARTITION BY job_description ORDER BY experience_years ASC) AS least_experienced
FROM Personal;


