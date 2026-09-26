-- SQL Lesson 7: OUTER JOINs

-- Question 1: Find the list of all buildings that have employees
SELECT DISTINCT Building_name
FROM employees
LEFT JOIN buildings
    ON employees.building = buildings.building_name;

-- Question 2: Find the list of all buildings and their capacity
SELECT * FROM buildings;

-- Question 3: List all buildings and the distinct employee roles in each building (including empty buildings)
SELECT DISTINCT Building_name, Role
FROM buildings
LEFT JOIN employees
    ON buildings.building_name = employees.building;
