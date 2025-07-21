select *
from employee_demographics;

select*
from employee_demographics 
inner join employee_salary 
	on employee_demographics.employee_id = employee_salary.employee_id;
    
select*
from employee_demographics as dem
inner join employee_salary as es
	on dem.employee_id = es.employee_id;
    

select*
from employee_demographics as dem
right join employee_salary as es
	on dem.employee_id = es.employee_id;
    
#secretsanta question
select emp1.employee_id as emp_santa,  #what columns we want in the output
emp1.first_name as first_name_santa,
emp1.last_name as last_name_santa,
emp2.employee_id as emp_receiving,  
emp2.first_name as  first_name_receiving,
emp2.last_name as last_name_receiving
from employee_salary as emp1 #and what u want to join
join employee_salary as emp2 #where u want to join
	on emp1.employee_id+1=emp2.employee_id; #joined by which table?
    

#joining multiple tables
select*
from employee_demographics as dem
inner join employee_salary as sal
	on dem.employee_id=sal.employee_id
inner join parks_departments as pd
	on pd.department_id=sal.dept_id;


    