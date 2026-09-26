-- SQL Lesson 10: Queries with aggregates (Pt. 1)

-- Question 1: Find the longest time that an employee has been at the studio
SELECT MAX(Years_employed) FROM employees;

-- Question 2: For each role, find the average number of years employed by employees in that role
SELECT Role, AVG(Years_employed) 
FROM employees
GROUP BY Role;

-- Question 3: Find the total number of employee years worked in each building
SELECT Building, SUM(Years_employed) 
FROM employees
GROUP BY Building;


-- SQL Lesson 11: Queries with aggregates (Pt. 2)

-- Question 1: Find the number of Artists in the studio (without a HAVING clause)
SELECT COUNT(*)
FROM employees
WHERE Role = 'Artist';

-- Question 2: Find the number of Employees of each role in the studio
SELECT Role, COUNT(*) AS Num_Employees
FROM employees
GROUP BY Role;

-- Question 3: Find the total number of years employed by all Engineers
SELECT Role, SUM(Years_employed)  
FROM employees
WHERE Role = 'Engineer';