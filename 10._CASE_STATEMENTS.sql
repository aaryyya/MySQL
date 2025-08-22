select first_name,
last_name,
case 
	when age<=30 then 'Young'
    when age<=35 then 'Getting Old'
    when  age between 36 and 50 then 'Middies'
    when age>=50 then "ON DEATH's BED!!"
end as Age_Bracket
from employee_demographics;


select first_name,
last_name,
case 
	when age<=30 then 'Young'
    when age<=35 then 'Getting Old'
    when  age < 50 then 'Middies'
    when age>=50 then "ON DEATH's BED!!"
end as Age_Bracket
from employee_demographics;


select salary, first_name,last_name,
case 
	when salary < 50000 then salary+(salary*0.05)
    #or u can use then salary*1.05 
    #or u can use then salary*1.07 
    when salary>50000 then salary+(salary*0.07)
end as new_salary 
from employee_salary;

select first_name,last_name,salary,
case
	when salary<50000 then salary*1.05
	when salary>50000 then salary*1.07
    else 'No Hike'
end as new_salary,
case 
	when dept_id=6 then salary*0.10
    else 'No Hike'
end as Bonus
from employee_salary;






    