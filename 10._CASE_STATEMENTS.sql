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
    when salary>50000 then salary+(salary*0.07)
end as new_salary 
from employee_salary;





    