-- SQL Lesson 13: Inserting rows

-- Question 1: Add the studio's new production, Toy Story 4 to the list of movies (you can use any director)
INSERT INTO movies
(Title, Director, Year, Length_minutes)
VALUES ('Toy Story 4', 'Lee Unkrich', 2016, 90);

-- Question 2: Toy Story 4 has been released to critical acclaim! It had a rating of 8.7, and made 340 million domestically and 270 million internationally. Add the record to the BoxOffice table.
INSERT INTO boxoffice
(Movie_id, Rating, Domestic_sales, International_sales)
VALUES (15, 8.7, 340000000, 270000000);