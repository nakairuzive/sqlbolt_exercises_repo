# sqlbolt_exercises_repo
Code repository documenting all the exercises I did on SQLBolt along with summary of what I learned that can be found in the [CheatSheet.md](CheatSheet.md) document.

> [!NOTE]               
> ⭐ If you found this repository helpful, please consider giving it a star!

## Building the Database(s)

SQLBolt uses various data tables for the exercises. Hence I will be replicating these tables.


### The following guide is for VS Code:

#### Step 1: Install a local database tool
- Install the **SQLite Viewer** extension
- Install the **SQLTools** extension

#### Step 2: Set up your project folder
```
mkdir sqlbolt-local
cd sqlbolt-local
```

#### Step 3: Copy the Schema and Data

1. Create a file called **schema.sql**, we will create the table here.
```
-- schema.sql
CREATE TABLE movies (
  id INTEGER PRIMARY KEY,
  title TEXT,
  director TEXT,
  year INTEGER,
  length_minutes INTEGER
);
```

2. Create a file called **seed.sql**, these are the queries for inserting data into the table.
```
-- seed.sql
INSERT INTO movies VALUES(1, 'Toy Story', 'John Lasseter', 1995, 81);
INSERT INTO movies VALUES(2, 'A Bug''s Life', 'John Lasseter', 1998, 95);
INSERT INTO movies VALUES(3, 'Toy Story 2', 'John Lasseter', 1999, 93);
```
>[!Tip]             
> If you need to add more rows in the future first                 
> run this command ```sqlite3 sqlbolt.db "DELETE FROM movies;" ```          
> then run ```sqlite3 sqlbolt.db ".read seed.sql"```


#### Step 4: Build and run your local database

In terminal run the following commands

1. Create the database
```
sqlite3 sqlbolt.db
```
2. Import schema and data files
```
.read schema.sql
.read seed.sql
```

3. Test that it works
```
.tables // returns a list of all the tables in the database
.mode box  //data will be displayed in tables
SELECT * FROM movies;
```

4. Exit
```
.exit
```

>[!Tip]             
> You can create multiple tables using this same format and files. There is no need to create a new database, just keep adding tables.

## Writing the solutions

#### Step 1. Create a folder to store the solutions for each lesson                  
e.g. 🗁 lesson_1_select_queries_101

#### Step 2. Create a solutions file in the folder
e.g.                          
    🗁 lesson_1_select_queries_101                            
                    └─  🗎 solutions.sql

### Step 3. Run the queries in the **sqlbolt-local** directory
```
-- Use either of these commands
sqlite3 sqlbolt-local/sqlbolt.db ".read lesson_1_select_queries_101/solutions.sql"

-- If you would like the data to the displayed with columns and headers
sqlite3 -header -column sqlbolt-local/sqlbolt.db ".read lesson_1_select_queries_101/solutions.sql"
```




---------

### Lesson Progress
- [X] Introduction to SQL         
- [X] SQL Lesson 1: SELECT queries 101            
- [x] SQL Lesson 2: Queries with constraints (Pt. 1)          
- [x] SQL Lesson 3: Queries with constraints (Pt. 2)          
- [X] SQL Lesson 4: Filtering and sorting Query results               
- [X] SQL Review: Simple SELECT Queries               
- [x] SQL Lesson 6: Multi-table queries with JOINs                
- [x] SQL Lesson 7: OUTER JOINs           
- [x] SQL Lesson 8: A short note on NULLs             
- [x] SQL Lesson 9: Queries with expressions              
- [x] SQL Lesson 10: Queries with aggregates (Pt. 1)              
- [x] SQL Lesson 11: Queries with aggregates (Pt. 2)          
- [x] SQL Lesson 12: Order of execution of a Query                
- [x] SQL Lesson 13: Inserting rows               
- [x] SQL Lesson 14: Updating rows            
- [x] SQL Lesson 15: Deleting rows                
- [x] SQL Lesson 16: Creating tables          
- [x] SQL Lesson 17: Altering tables          
- [x] SQL Lesson 18: Dropping tables            
