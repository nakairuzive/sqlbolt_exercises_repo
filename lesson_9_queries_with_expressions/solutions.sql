-- SQL Lesson 9: Queries with expressions

-- Question 1: List all movies and their combined sales in millions of dollars
SELECT Title, (Domestic_sales + International_sales)/1000000 AS Sales_in_Millions
FROM movies
LEFT JOIN boxoffice
    ON movies.id = boxoffice.movie_id;

-- Question 2: List all movies and their combined sales in millions of dollars
SELECT Title, Rating * 10
FROM movies
LEFT JOIN boxoffice
    ON movies.id = boxoffice.movie_id;

-- Question 3: List all movies that were released on even number years
SELECT * 
FROM movies 
WHERE year % 2 = 0;