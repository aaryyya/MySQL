select age, gender
from employee_demographics
union
select first_name, last_name
from employee_salary;

select age, gender
from employee_demographics
union all
select first_name, last_name
from employee_salary;



select first_name,last_name, 'Old Women' as Label
from employee_demographics
where age>40 and gender='Female'
union
select first_name,last_name, 'Old Male' as Label
from employee_demographics
where age>40 and gender='Male'
union 
select first_name, last_name, 'Well Paid' as Label
from employee_salary
where salary>70000 
order by first_name,last_name


#limit 1, 3 