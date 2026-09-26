-- SQL Lesson 8: A short note on NULLs

-- Question 1: Find the name and role of all employees who have not been assigned to a building
SELECT Name, Role
FROM employees
LEFT JOIN buildings
    ON employees.building = buildings.building_name
WHERE employees.building IS NULL;

-- Question 2: Find the names of the buildings that hold no employees
SELECT Building_name
FROM buildings
LEFT JOIN employees
    ON employees.building = buildings.building_name
WHERE employees.building IS NULL;