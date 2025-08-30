#common table expression. theyy allow u to define a subquery block that you can  then reference within main query
#with keyword ctes are unique coz you can only use them immediately after u create it
#used to do advanced calculations that u cant easily or cant do at all within just one query
with cte_example as
(
select gender, avg(salary) avg_sal, max(salary) max_salary, min(salary) min_salary, count(salary) coun_sal
from employee_demographics dem
join employee_salary sal
	on dem.employee_id=sal.employee_id
group by gender
)
select avg(avg_sal)
from cte_example;


#subquery
select avg(avg_sal)
from(
select gender, avg(salary) avg_sal, max(salary) max_salary, min(salary) min_salary, count(salary) coun_sal
from employee_demographics dem
join employee_salary sal
	on dem.employee_id=sal.employee_id
group by gender
) example_subq;



#ctes acts like a entire table and are not in memomory 
#after u run them once we cant rerun them the object we try to find is not available
#it almost acts as temparory query

with cte_example as
(
select employee_id,gender,birth_date
from employee_demographics 
where birth_date>'1985-01-01'
), 
cte_example2 as
(
select employee_id,salary
from employee_salary
where salary>50000
)
select*
from cte_example
join cte_example2
on cte_example.employee_id=cte_example2.employee_id;

with cte_example3 (Gender,Avg_Sal,Max_sal,Min_Sal,Count_sal) as #this line overwrites the below aliases of avg(salary) as avg sal etc so u wont be compelled to write everything by doing as
(
select gender, avg(salary) avg_sal, max(salary) max_salary, min(salary) min_salary, count(salary) coun_sal
from employee_demographics dem
join employee_salary sal
	on dem.employee_id=sal.employee_id
group by gender
)
select *
from cte_example3;

