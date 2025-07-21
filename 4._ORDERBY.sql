INSERT INTO employee_demographics values
#(13,'Mark','Perkins',35,'Male','1989-03-25'),
(14,	'sqraiga'	,'Middlebrooks',	37,	'Female',	'1986-07-27'),
(15,	'cressida',	'Brendanawicz',	40	,'Female',	'1983-06-14');
SELECT *
FROM employee_demographics
#ORDER BY first_name ASC
ORDER BY age,gender;