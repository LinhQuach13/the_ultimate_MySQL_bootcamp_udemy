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