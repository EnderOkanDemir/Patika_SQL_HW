-- Creating a database and tables
-- Databases - right click - Create - Database - database name "bookstore"
-- bookstore - right click - Query Tool
-- We will create the table with a SQL query

CREATE TABLE <table_name>
( 
	<column_name> <data_type> <constraint>,
	...
	<column_name> <data_type> <constraint>;
)
-- <constraint> kısıt
-- columns has 3 specific feature <column_name>, <data_type> and <constraint>,

CREATE TABLE author
( 
	id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(100),
	birthday DATE
	
);

-- SERIAL datatype helps data to increase automatically
-- VARCHAR is character varying(50) which means "değişen karakter sayısı 50"

SELECT *
FROM author;


-- INSERT INTO author (id, first_name, last_name, email, birthday)
-- However, we don't need to enter id, because its datatype is SERIAL and it increases automatically

INSERT INTO author (first_name, last_name, email, birthday)
VALUES 
	('Haruki', 'Murakami', 'haruki@murakami.com', '1948-11-07'),
	('Sabahattin', 'Ali', 'sabhattin@ali.com', '1914-07-11'),
	('Orhan', 'Pamuk', 'orhan@pamuk.com', '1950-04-14'),
	('Halide Edip', 'Adıvar', 'halide@edip.com', '1884-07-11'),
	('Zygmunt', 'Bauman', 'zygmunt@bauman.com', '1911-07-12');


-- We can create a new table using the existing table template

CREATE TABLE author2 (LIKE author);

SELECT *
FROM author2

-- We can insert data from the 'author' table to the 'author2' table

INSERT INTO author2
SELECT *
FROM author
-- This code inserts all rows from the 'author' table to the 'author2' table
-- If we want a specific row to insert then we use the code below


INSERT INTO author2
SELECT *
FROM author
WHERE first_name = 'Sabahattin';


SELECT *
FROM author2


-- We can create a new table by copying one table with a new name
-- We can work with the copied table if we don't want to break the original table.

CREATE TABLE author3 AS
SELECT *
FROM author;


-- We can delete a table as well.

DROP TABLE author4;
-- ERROR:  table "author4" does not exist

-- So, we can use the following code not to get such output
DROP TABLE IF EXISTS author4;
-- NOTICE:  table "author4" does not exist, skipping DROP TABLE

DROP TABLE IF EXISTS author3;
DROP TABLE author2;
