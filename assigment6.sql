select * from employees where salary BETWEEN 1000 and 12000;

select * from employees where manager_id in (101,100,148,200000);

select * from employees where first_name like '%K%';

select * from employees where first_name like '%K%';

select * from employees where first_name like '_t%';

select * from employees where manager_id not in (101,100,148,200000);

select * from employees where manager_id not in (101,100,148,200000)  and salary > 5000;

select * from employees where manager_id not in (101,100,148,200000)  OR salary > 5000;

select first_name, last_name, salary * 0.1 as "tax" from employees;

select first_name, last_name, hire_date from employees;

select first_name, last_name, hire_date from employees order by hire_date;

select first_name, last_name, hire_date from employees order by first_name;

select first_name, last_name, hire_date from employees order by first_name desc;

select employees.first_name,employees.last_name,employees.salary,departments.department_name from employees , departments 
WHERE employees.department_id = departments.department_id;

select e.first_name, d.department_name from employees e left outer JOIN departments d 
on e.department_id = d.department_id;

select e.first_name, d.department_name from employees e RIGHT outer JOIN departments d 
on e.department_id = d.department_id;




select * from jobs

select job_title from jobs where min_salary , max_salary BETWEEN 4000 and 5000;


select * from regions
select * from locations
select * from employees
select * from departments

select city,sum(salary) from employees JOIN departments ON employees.department_id = departments.department_id
JOIN  locations on departments.location_id = locations.location_id GROUP BY city;
''' firday 6-12 '''
create view  emo_info as select* from employees;

select * from emo_info;

create view all_mep_names_v_salary as select first_name, last_name, salary from employees where salary >= 5000;

select * from all_mep_names_v;
select * from all_mep_names_v_salary;

create or ALTER view all_mep_names_v_salary as select first_name, last_name, salary from employees where salary >= 5000 with check option;

drop VIEW all_mep_names_v_salary;

SELECT * from all_mep_names_v_salary;
select * from departments;
select * from employees

create VIEW display_v_2 as select departments.department_id, departments.department_name , count(employees.employee_id) as 'totla employess',
sum(employees.salary) as 'total salary' from departments join employees on departments.department_id = employees.department_id
GROUP BY departments.department_id ,departments.department_name with check option department_id =100 ;

SELECT * from display_v;

