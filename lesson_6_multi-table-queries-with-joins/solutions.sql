-- SQL Lesson 6: Multi-table queries with JOINs

-- Question 1: Find the domestic and international sales for each movie
SELECT title, Domestic_sales, International_sales
FROM movies
INNER JOIN boxoffice
    ON movies.id = boxoffice.movie_id;

-- Question 2: Show the sales numbers for each movie that did better internationally rather than domestically
SELECT title, Domestic_sales, International_sales
FROM movies
INNER JOIN boxoffice
    ON movies.id = boxoffice.movie_id
WHERE Domestic_sales < International_sales;

-- Question 3: List all the movies by their ratings in descending order
SELECT Title, Rating
FROM movies
INNER JOIN boxoffice
    ON movies.id = boxoffice.movie_id
ORDER BY Rating DESC;