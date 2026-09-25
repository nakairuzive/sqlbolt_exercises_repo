# sqlbolt_exercises_repo
Code repository documenting all the exercises I did on SQLBolt along with summarise of what I learned

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
SELECT * FROM movies;
```

4. Exit
```
.exit
```

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
 -header -column sqlbolt-local/sqlbolt.db ".read lesson_1_select_queries_101/solutions.sql"
```