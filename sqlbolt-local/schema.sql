-- Movies Table
DROP TABLE IF EXISTS movies;
CREATE TABLE IF NOT EXISTS movies(
    id INTEGER PRIMARY KEY,
    title TEXT,
    director TEXT,
    year INTEGER,
    length_minutes INTEGER
);

-- North American cities table
DROP TABLE IF EXISTS north_american_cites;
CREATE TABLE IF NOT EXISTS north_american_cities(
    City TEXT,
    Country TEXT,
    Population INTEGER,
    Latitude FLOAT,
    Longitude FLOAT 
); 

-- Box office table
DROP TABLE IF EXISTS box_office;
CREATE TABLE IF NOT EXISTS box_office(
    Movie_id INTEGER PRIMARY KEY,
    Rating DECIMAL,
    Domestic_sales INTEGER,
    International_sales INTEGER
);

-- Buildings table
DROP TABLE IF EXISTS buildings;
CREATE TABLE IF NOT EXISTS buildings(
    Building_name TEXT,
    Capacity INTEGER
);

-- Employees table
DROP TABLE IF EXISTS employees;
CREATE TABLE IF NOT EXISTS employees(
    Role TEXT,
    Name TEXT,
    Building TEXT,
    Years_employed INTEGER
);

