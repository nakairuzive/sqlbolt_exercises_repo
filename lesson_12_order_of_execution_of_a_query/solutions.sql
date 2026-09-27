-- SQL Lesson 12: Order of execution of a Query

-- Question 1: Find the number of movies each director has directed
SELECT Director, COUNT(*)
FROM movies
GROUP BY Director;


-- Question 2: Find the total domestic and international sales that can be attributed to each director
SELECT Director, SUM(Domestic_sales + International_sales)
FROM movies
JOIN boxoffice
    ON movies.id = boxoffice.movie_id
GROUP BY Director;

