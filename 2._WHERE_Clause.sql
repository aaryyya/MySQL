SELECT*
FROM employee_salary
WHERE first_name='Leslie';

SELECT*
FROM employee_salary
WHERE salary>50000;

SELECT*
FROM employee_salary
WHERE salary<=50000;

SELECT*
FROM employee_salary
WHERE salary>=50000;

SELECT*
FROM employee_demographics
WHERE gender='Female';

SELECT*
FROM employee_demographics
WHERE birth_date>'1985-01-01'
AND gender='Female';

SELECT*
FROM employee_demographics
WHERE birth_date>'1985-01-01'
OR NOT gender='Male';

SELECT*
FROM employee_demographics
WHERE birth_date>'1985-01-01'
OR gender='Male';

SELECT*
FROM employee_demographics
#WHERE first_name LIKE 'a%'
WHERE first_name LIKE 'a%';

SELECT*
FROM employee_demographics
WHERE first_name LIKE 'b_%';

SELECT*
FROM employee_demographics
WHERE birth_date LIKE '1989%';


