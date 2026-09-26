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