select*
from employee_salary
where salary>=50000;

create procedure large_sal()
select*
from employee_salary
where salary>=50000;

call large_sal();

#call parks_and_recreation.large_sal();

delimiter $$
create procedure large_sal2()
begin 
	select *
	from employee_salary
	where salary>=50000;
	select*
	from employee_salary
	where salary>=10000;
end $$
delimiter ;

delimiter $$
create procedure large_sal3(p_em_id int)
begin 
	select salary
	from employee_salary
    where employee_id=p_em_id;#parameter is the em_id and we see if the actual emmployee_id is same as that of the paraameter passed
	
end $$
delimiter ;

call large_sal3(1);