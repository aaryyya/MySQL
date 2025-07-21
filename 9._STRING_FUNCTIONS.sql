select length ('skyfall');
select first_name, length(first_name)
from employee_demographics
order by 2;

select upper('sky');
select lower('SKY');

select first_name, upper(first_name)
from employee_demographics;

select('       sky      ') as t;
select trim('                         sky                   ') as t;
select ltrim('        sky          ') as t;
select rtrim('        sky          ') as t;


select first_name,
left(first_name,2),
right(first_name,3)
from employee_demographics;


select first_name,
left(first_name,2),
right(first_name,3),
substring(first_name, 3,2), #going onto the third position and going right 2 characters i.e 3 and 4 
substring(first_name, 4,1) as s,
birth_date,
substring(birth_date, 1,4) as year,
substring(birth_date, 6,2) as month
from employee_demographics;


select first_name, replace(first_name,'a','z')#replace is case sensitive
from employee_demographics;


select locate ('a', 'Donna');
select first_name, locate('a', first_name) as a_in_name#not case sensitive gives location on what position
from employee_demographics;


select first_name, last_name,
concat(first_name,' ' ,last_name) as Full_Name
from employee_demographics;

