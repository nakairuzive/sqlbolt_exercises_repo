-- SQL Lesson 4: Filtering and sorting Query results

-- Question 1: List all directors of Pixar movies (alphabetically), without duplicates
SELECT DISTINCT director 
FROM movies
ORDER BY director;

-- Question 2: List the last four Pixar movies released (ordered from most recent to least)
SELECT *
FROM movies
ORDER BY year DESC
LIMIT 4

-- Question 3: List the first five Pixar movies sorted alphabetically
SELECT *
FROM movies
ORDER BY title
LIMIT 5

-- Question 4: List the next five Pixar movies sorted alphabetically
SELECT *
FROM movies
ORDER BY title
LIMIT 5 OFFSET 5;
