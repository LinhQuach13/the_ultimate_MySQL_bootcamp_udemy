-------Creating Tables---------
--- First create database to put table in
CREATE DATABASE cat_app;

---Use newly created cat_app database
USE cat_app;

--- Create cats table 
CREATE TABLE cats
  (
    name VARCHAR(100),
    age INT
  );

--- Verify table was made
SHOW TABLES;

--- Show columns and datatypes of columns from cats table
SHOW COLUMNS FROM cats;

--- another way to show column names and datatypes of columns
DESC cats;

--- Delete tables
DROP TABLE cats;

--- Verify table was deleted/dropped
SHOW TABLES;

--- another way to verify table was deleted/dropped, will receive an error because table no longer exists
DESC cats;


--- Create a database for pasteries 
CREATE DATABASE bakery;

--- Use bakery database
USE bakery;

--- Create pastries table
CREATE TABLE pastries (name VARCHAR(50), quantity INT);

--- Verify table was made
SHOW TABLES;

--- View column name and column datatypes
DESC pastries;

--- Note: can use this command to see which database is selected
SELECT database();

--- Drop/delete pastries table
DROP TABLE pastries;

--- Verify table was deleted/dropped
SHOW TABLES;


-------USING INSERT COMMAND---------
--- Change to cat_app database
USE cat_app;

--- verify which database is selected
SELECT database();

--- Create cats table with cat name (50 character limit) and age
CREATE TABLE cats(name VARCHAR(50), age INT);

--- Insert new values into table
--- REMEMBER ORDER here MATTERS
INSERT INTO cats(name, age)
VALUES('Blue', 1);

--- Insert another set of new values into table
--- REMEMBER ORDER here MATTERS
INSERT INTO cats(age, name)
VALUES(11, 'Draco');

--- Command used to see all values from cats table
SELECT * FROM cats;


-------Multiple Insert ("Bulk" insert data)------------

----Insert multiple cat values to table-----
INSERT INTO cats(name, age)
VALUES ('Peanut', 2)
,('Butter', 4)
,('Jelly', 7);

---Verify values were added to table---
SELECT * FROM cats;



---Create a people database---
CREATE DATABASE people;

---Verify database was made---
SHOW databases;

---Use people database---
USE people;

--- Create people table---
CREATE TABLE people
  (
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    age INT
  );

---Verify table was made---
SHOW tables;

--- Look at columns and datatypes in tables---
DESC people;

--Insert first person---
INSERT INTO people(first_name, last_name, age) 
VALUES("'Tina'", "'Belcher'", 13);

---Insert second person---
--changed order here, REMEBER ORDER MATTERS---
INSERT INTO people(last_name, first_name, age)
    -> VALUES("'Bob'", "'Belcher'", 42);

--- Put names in the wrong order above, need to delete Belcher Bob and redo---
DELETE FROM people WHERE last_name = 'Bob';

--- Adding Bob Belcher the correct way---
INSERT INTO people(last_name, first_name, age)
    -> VALUES("'Belcher'", "'Bob'", 42);