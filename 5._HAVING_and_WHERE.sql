SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender
HAVING AVG(age)>40;

SELECT age, AVG(age)
FROM employee_demographics
GROUP BY age
HAVING AVG(age)>40;

SELECT occupation, AVG(salary)
FROM employee_salary
WHERE occupation LIKE '%manager%'
GROUP BY occupation
HAVING AVG(salary)> 10000;


SELECT occupation
FROM employee_salary
WHERE occupation LIKE '%rs%'
GROUP BY occupation



