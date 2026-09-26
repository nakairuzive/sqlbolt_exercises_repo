-- SQL Review: Simple SELECT Queries

-- Question 1: List all the Canadian cities and their populations
SELECT city, population
FROM north_american_cities
WHERE country = 'Canada';

-- Question 2: Order all the cities in the United States by their latitude from north to south
SELECT *
FROM north_american_cities
WHERE country = 'United States'
ORDER BY latitude DESC;

-- Question 3: List all the cities west of Chicago, ordered from west to east
SELECT * 
FROM north_american_cities
WHERE longitude < -87.629798
ORDER BY longitude DESC;

-- Question 4: List the two largest cities in Mexico (by population)
SELECT city
FROM north_american_cities
WHERE country = 'Mexico'
ORDER BY population DESC
LIMIT 2;

-- Question 5: List the third and fourth largest cities (by population) in the United States and their population
SELECT *
FROM north_american_cities
WHERE country = 'United States'
ORDER BY population DESC
LIMIT 2 OFFSET 2;


/* Notes on Geography:
- Longitude: Runs vertically across the globe from north to south
- Latitude: Runs horizontally across the globe from east to west
- For an area to be further west its longitude has to be smaller (more negative, negative, or smaller)
- For an area to be further east its longitude has to be bigger (larger, more positive)
- For an area to be further north its latitude has to be larger, more positive
- For an area to be further south its latitude has to be smaller, more negative
*/
