select*
from employee_demographics;
select*
from employee_salary;
delimiter $$
create trigger employee_insert
	after insert on employee_salary
    for each row                 #for each row that is inserted
begin
	insert into employee_demographics(employee_id,first_name,last_name)
    values (new.employee_id,new.first_name,new.last_name); #new keyword here only takes the new rows that were inserted on the other hand old takes the newly updte dor deleteed rows to be printed
end $$
delimiter ;

insert into employee_salary(employee_id,first_name,last_name,occupation,salary,dept_id)
values(16,'Jean','Sebastian','Clerk',400000,null);



select*
from employee_demographics;

delimiter $$
create event delete_retires
on schedule every 30 second
do
begin
	delete
    from employee_demographics
    where age>=60;
end $$
delimiter ;

show variables like 'event%';