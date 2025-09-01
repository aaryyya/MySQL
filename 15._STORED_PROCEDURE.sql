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

