#similar to group by and  but the dont#allow u you to rollup everything inyo one row when grouping
#windows function allow u to partition or group but they each keep their own unique rows in output

select gender, avg(salary)
from employee_demographics dem
join employee_salary sal
	on dem.employee_id=sal.employee_id
group by gender;


select gender, avg(salary) over() #over() here gives avg of salary for each row of males and females
from employee_demographics dem
join employee_salary sal
	on dem.employee_id=sal.employee_id;


select gender, avg(salary) over(partition by gender) #this gives a partition but also and average for the individual row as males and females
from employee_demographics dem
join employee_salary sal
	on dem.employee_id=sal.employee_id;


select dem.first_name,dem.last_name,gender,
sum(salary) over (partition by gender)
from employee_demographics dem
join employee_salary sal
	on dem.employee_id=sal.employee_id;  
    
    
select dem.employee_id, dem.first_name,dem.last_name,gender,salary,
sum(salary) over (partition by gender order by dem.employee_id) as rolling_total
from employee_demographics dem
join employee_salary sal
	on dem.employee_id=sal.employee_id;
    
  
select dem.employee_id,dem.first_name,dem.last_name,gender,salary,
row_number() over (partition by gender order by salary desc)
from employee_demographics dem
join employee_salary sal
	on dem.employee_id=sal.employee_id;  
    
    
  
select dem.employee_id,dem.first_name,dem.last_name,gender,salary,
row_number() over (partition by gender order by salary desc) as row_num,#takes no duplicates where as rank does give duplicate ranks for the equals
rank() over (partition by gender order by salary desc) as rank_num,#rank skipsthe number after the rank no ,of duplicates and dense rank keeps duplicates and the number in sequence nxt to it 
dense_rank() over (partition by gender order by salary desc) as dense_rank_num#i.e rank gives numbering positionally and dense rank keeps numbering numerically and row number gives unique nubering with no duplicates within that partition
from employee_demographics dem
join employee_salary sal
	on dem.employee_id=sal.employee_id;      