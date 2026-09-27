### SQL Cheat Sheet
> [!IMPORTANT]      
> This is a summary of what I learned as per my understanding.
> Please be sure to use credible learning resources like the MySQL Documentation, slides from [365 Data Science](https://365datascience.com/ty-downloadable-resources/?resourcesCategory=course-notes) or my personal favourite [W3 Schools SQL Tutorials](https://www.w3schools.com/sql/)

#### SQL STATEMENTS
| Statements | Purpose & Use Case | Code Example |
| :--- | :--- | :--- |
| `SELECT` | Specifies the columns to retrieve from the database. | `SELECT title, director FROM movies;` |
| `FROM` | Specifies the table(s) to query data from. | `SELECT * FROM movies;` |
| `WHERE` | Filters rows based on specified conditions. | `SELECT * FROM movies WHERE year > 2000;` |
| `INNER/LEFT/RIGHT/FULL JOIN` | Combines rows from multiple tables based on a related column. | `SELECT * FROM movies INNER JOIN boxoffice ON movies.id = boxoffice.movie_id;` |
| `GROUP BY` | Groups rows that share common values into summary rows. | `SELECT director, COUNT(*) FROM movies GROUP BY director;` |
| `HAVING` | Filters grouped rows based on an aggregate condition (used after `GROUP BY`). | `SELECT director, COUNT(*) FROM movies GROUP BY director HAVING COUNT(*) > 2;` |
| `ORDER BY` | Sorts the result set in ascending (`ASC`) or descending (`DESC`) order. | `SELECT * FROM movies ORDER BY title ASC;` |
| `LIMIT` | Restricts the maximum number of rows returned in the query. | `SELECT * FROM movies LIMIT 5;` |
| `OFFSET` | Specifies the number of rows to skip before returning results. | `SELECT * FROM movies LIMIT 5 OFFSET 5;` |

#### SQL Statements Used with Conditions
| Conditional Statements | Purpose & Use Case | Code Example |
| :--- | :--- | :--- |
| `AND` | Ensures all conditions must be true for a row to be included. | `SELECT * FROM employees WHERE role = 'Engineer' AND years_employed > 3;` |
| `OR` | Ensures at least one condition must be true for a row to be included. | `SELECT * FROM employees WHERE department = 'Sales' OR department = 'Marketing';` |
| `NOT` | Negates a given condition (filters out matching rows). | `SELECT * FROM employees WHERE NOT department = 'HR';` |
| `LIKE` | Performs pattern matching using wildcards (`%` for multiple characters, `_` for a single character). | `SELECT * FROM employees WHERE name LIKE 'A%';` |
| `BETWEEN` | Filters values within a specific range (inclusive of boundary values). | `SELECT * FROM movies WHERE year BETWEEN 1990 AND 1999;` |
| `IN` | Matches any value within a specified list of values. | `SELECT * FROM employees WHERE id IN (1, 3, 5);` |
| `IS NULL` / `IS NOT NULL` | Checks specifically for missing (`NULL`) or present data in a column. | `SELECT * FROM buildings WHERE building_name IS NULL;` |

#### Data & Table Altering Statements
| Table & Data Statements | Purpose & Use Case | Code Example |
| :--- | :--- | :--- |
| `CREATE TABLE` | Creates a new table structure with specified column names and data types. | `CREATE TABLE artists (id INT, name TEXT);` |
| `ALTER TABLE` | Modifies an existing table's schema. | `ALTER TABLE movies RENAME TO films;` |
| `ADD` | Used with `ALTER TABLE` to add a new column. | `ALTER TABLE movies ADD COLUMN rating FLOAT;` |
| `DROP` | Used with `ALTER TABLE` to remove a column. | `ALTER TABLE movies DROP COLUMN rating;` |
| `RENAME TO` | Renames an existing table or column. | `ALTER TABLE movies RENAME COLUMN title TO movie_title;` |
| `INSERT INTO` | Adds new rows of data into a table. | `INSERT INTO movies VALUES (4, 'Toy Story', 'John Lasseter', 1995, 81);` |
| `UPDATE` | Modifies existing data/rows in a table. | `UPDATE movies SET director = 'Joss Whedon' WHERE id = 2;` |
| `DELETE` | Removes existing rows from a table based on conditions. | `DELETE FROM movies WHERE year < 1980;` |
| `DROP TABLE` | Permanently deletes an entire table and its stored data. | `DROP TABLE movies;` |

#### Aggregate Functions
| Function | Purpose & Use Case | Code Example |
| :--- | :--- | :--- |
| `COUNT()` | Returns the total count of rows or non-null values in a column. | `SELECT COUNT(*) FROM employees;` |
| `SUM()` | Calculates the total numeric sum across a column. | `SELECT SUM(years_employed) FROM employees;` |
| `AVG()` | Computes the average value of a numeric column. | `SELECT AVG(rating) FROM boxoffice;` |
| `MIN()` | Retrieves the lowest value in a column. | `SELECT MIN(year) FROM movies;` |
| `MAX()` | Retrieves the highest value in a column. | `SELECT MAX(sales_in_millions) FROM boxoffice;` |

#### Aliases & Expressions
| Keyword / Operator | Purpose & Use Case | Code Example |
| :--- | :--- | :--- |
| `AS` | Creates a temporary alias to rename columns or tables for cleaner output readability. | `SELECT title AS movie_name FROM movies;` |
| Arithmetic Operators (`+`, `-`, `*`, `/`) | Allows mathematical operations directly inside queries. | `SELECT title, (sales_domestic + sales_international) AS total_sales FROM boxoffice;` |
