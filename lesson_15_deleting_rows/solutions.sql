-- SQL Lesson 15: Deleting rows

-- Question 1: This database is getting too big, lets remove all movies that were released before 2005.
DELETE FROM movies
WHERE Year < 2005;

-- Question 2: Andrew Stanton has also left the studio, so please remove all movies directed by him.
DELETE FROM movies
WHERE Director = 'Andrew Stanton';