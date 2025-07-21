SELECT gender, count(first_name)
FROM employee_demographics
GROUP BY gender;

SELECT gender, MAX(age), MIN(age), AVG(age)
FROM employee_demographics
GROUP BY gender;