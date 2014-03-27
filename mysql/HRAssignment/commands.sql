#1
select * from employees 
join (select max(salary) as ms from employees) X on X.ms = employees.salary
where floor(datediff(curdate(), hire_date) / 365.25) <= 10;

desc employees;
desc departments;

#2
#list names and departments of all employees. If a department has no employees, show name as null
select first_name, last_name, department_name from employees 
right outer join departments using(department_id);

#2
#list names and managers of employees
select e.first_name as employee, m.first_name as manager 
from employees e left outer join employees m on e.employee_id = m.manager_id;  

#3
select country_name, count(distinct employee_id) as number_of_employees from 
((employees join departments using(department_id)) join locations using(location_id))
join countries using(country_id)
group by country_id;

#4
select first_name, salary from employees where manager_id is null;

#5
select region_name, city, first_name, last_name from ((((employees join departments using(department_id)) join 
locations using(location_id)) join countries using(country_id)) 
join regions using(region_id))
order by first_name, last_name;
