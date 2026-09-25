-- SQL Lesson 2: Queries with constraints (Pt. 1)

-- Question 1: Find the movie with a row id of 6
SELECT * 
FROM movies
WHERE id = 6;

-- Question 2: Find the movies released in the years between 2000 and 2010
SELECT * 
FROM movies
WHERE year BETWEEN 2000 and 2010;

-- Question 3: Find the movies not released in the years between 2000 and 2010
SELECT * 
FROM movies
WHERE year not BETWEEN 2000 and 2010;

-- Question 4: Find the first 5 Pixar movies and their release year
SELECT title, year
FROM movies
LIMIT 5;

-- SQL Lesson 2: Queries with constraints (Pt. 2)

-- Question 1: Find all the Toy Story movies 
SELECT * 
FROM movies
WHERE title LIKE '%Toy Story%';

-- Question 2: Find all the movies directed by John Lasseter
SELECT * 
FROM movies
WHERE director = 'John Lasseter';

-- Question 3: Find all the movies (and director) not directed by John Lasseter
SELECT * 
FROM movies
WHERE director != 'John Lasseter';

-- Question 4:Find all the WALL-* movies
SELECT * 
FROM movies
WHERE title LIKE '%WALL-%';















-- SQL Lesson 2: Queries with constraints (Pt. 2)