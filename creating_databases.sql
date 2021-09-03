--- start sql in terminal command/ Start the CLI:
mysql-ctl cli

--- list current databases in mysql server/List available databases:
show databases;

--- Create hello_world_db database
CREATE DATABASE hello_world_db

--- verify database was created
show databases;

--- Create testing_db database
CREATE DATABASE testing_db;

--- verify database was created
show databases;


--- drop/delete databases 
  --- Note: drop in sql is sql's version of "delete"
  
--- drop hello_world_db
  DROP DATABASE hello_world_db;

--- verify database was dropped
show databases;


--- drop testing_db
  DROP DATABASE testing_db;

--- verify database was dropped
show databases;
