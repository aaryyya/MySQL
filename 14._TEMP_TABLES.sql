#temp  tabels are the tables that are created and are visible only in the sessions they are created in
#usually used for storiing intermediate results for complex queries before inserting them into something final
create temporary table temp_table
(first_name varchar(50),
last_name varchar(50),
fav_movie varchar(100)
);
select*
from temp_table; 

insert into temp_table
values('Alex','Freek','Lord of R');

select*
from temp_table;

create temporary table salary_over_50k
select*
from employee_salary
where salary>50000;

select*
from salary_over_50k;