--commands in sql
----------------------
SELECT - extracts data from a database
UPDATE - updates data in a database
DELETE - deletes data from a database
INSERT INTO - inserts new data into a database
CREATE DATABASE - creates a new database
ALTER DATABASE - modifies a database
CREATE TABLE - creates a new table
ALTER TABLE - modifies a table
DROP TABLE - deletes a table
CREATE INDEX - creates an index (search key)
DROP INDEX - deletes an index
Comments are indicated with a double dash like this -- this is now a comment


--creating out database
------------------------
CREATE DATABASE Users;

--this will create a database called Users that we can use to create our
--tables inside 

--creating our table
------------------------
CREATE TABLE names (
    UserID int NOT NULL AUTO_INCREMENT,
    FirstName varchar(255),
    LastName varchar(255),
);

--this will create an empty table 
that will look something like this:
[table name: names]
[UserID][column 1: FirstName][column 2: LastName]

--now we are going to add some users to out tables
-------------------------
INSERT INTO names (FirstName, LastName) VALUES ('Jags', 'Blast');

--as we set the column UserID to be an AUTO_INCREMENT column we do not need to add a value as
--sql will automaticly incromant the value by 1 for each entry
--now our table will look something like this
[table name: names]
[UserID][column 1: FirstName][column 2: LastName]
    1       Jags                    Blast

--now lets add another value to demonstrate the AUTO_INCREMENT feature of sql

INSERT INTO names (FirstName, LastName) VALUES ('John', 'Doe');

--now we have added our second user this is what our table looks like
--as you can see sql has automaticly filled in the UserID column with a 2

[table name: names]
[UserID][column 1: FirstName][column 2: LastName]
    1       Jags                    Blast
    2       John                    Doe


--here we are going to search out database for users using select, from and where
-------------------------
--select tells sql what column to return when we find a match
--from tells sql what table to look in
--where tells sql what to search for within the desired table 
--when writing sql commands a good way to think about how to form commands is to write in
--reverse of how you would tell another person 

--as an example you would ask a person to find the userid in the table names
--and tell you the resusts of the two column
--but this is just a rule of thumb i use if i get stuck


select [a column] from [table name]

-- out table layout
[table name: names]
[UserID][column 1: FirstName][column 2: LastName]
    1       Jags                    Blast
    2       John                    Doe
    3       Bob                     Lewis
    4       Jags                    Doe

-- end of table layout

-- get name of user 1

SELECT FirstName, LastName FROM name Where UserID=1;

--the command above would return Jags Blast

--we can also search for all users by last name with the following command

SELECT FirstName, LastName FROM name Where LastName='Doe';

--here we changed the column we are searching inside to LastName and returning all
--values equal to the value we as the string Doe