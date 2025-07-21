SELECT gender, AVG(age) AS avg_age
FROM employee_demographics
GROUP BY gender 
HAVING AVG(age)>40;

SELECT*
FROM employee_demographics
ORDER BY age DESC
LIMIT 2;

SELECT DISTINCT first_name
FROM employee_demographics