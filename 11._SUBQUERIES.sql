SELECT*
from employee_demographics
where employee_id in 
					(select employee_id #this can only have single element
						from employee_salary
                        where dept_id=1)
;
#first the lowe query is taken n then mapped to the main query 
#ron swanson which is empid=2 doesnt exist in salary that is why it isnt in this output
#IN is an operator and the subquery is operand

select first_name, salary,
(select avg(salary)
from employee_salary)
from employee_salary;


#subqueries can be used in from statement
select  gender, avg(age), max(age), min(age), count(age)
from employee_demographics
group by gender;

select gender, avg(`max(age)`) #remember they r backticks n not(quotes) as now the aggregate function is and has a new column name and we need to find average
from
(select  gender, avg(age), max(age), min(age), count(age)
from employee_demographics
group by gender)as agg_table
group by gender;


select avg(`max(age)`) #backticks as now the aggregate function is and has a new column name and we need to find average
from  #but instead of backticks we can use as and rename them and use the given name here
(select  gender, avg(age), max(age), min(age), count(age)
from employee_demographics
group by gender)as agg_table
;


