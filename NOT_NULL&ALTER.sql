-- Constraints help us limit the data we enter into a column.
-- A Primary Key (PK) or Foreign Key (FK) is a constraint.

CREATE TABLE users
(
	id SERIAL PRIMARY KEY,
	username VARCHAR(20),
	email VARCHAR(50),
	age INTEGER
);


INSERT INTO users(username, email, age) 
VALUES
	('tester','tester@gmail.com',23);
	
	
INSERT INTO users(email, age) 
VALUES
	('gamer@gmail.com',35);
 
 
SELECT *
FROM users;

-- "id"		"username"	"email"					"age"
-- 1		"tester"	"tester@gmail.com"		23
-- 2		[null]		"gamer@gmail.com"		35
-- 'username' cannot be null, so we should add a constraint to the 'username' column.


-- Normally we should write the following query if we want 'NOT NULL' for the username column but we already create the table.
-- So, we need to use the 'ALTER' function instead.

CREATE TABLE users
(
	id SERIAL PRIMARY KEY,
	username VARCHAR(20) NOT NULL,
	email VARCHAR(50),
	age INTEGER
);


ALTER TABLE users
ALTER COLUMN username
SET NOT NULL;

-- ERROR:  column "username" of relation "users" contains null values
-- We don't want the rows without the username; therefore, we can delete these rows.
-- alter: change, modify, replace, vary, değiştirmek


DELETE FROM users
WHERE username = NULL;

-- Output: DELETE 0, because we shouldn't use 'WHERE username = NULL'; the correct form of the code is 'WHERE username IS NULL'.

DELETE FROM users
WHERE username IS NULL;

-- If we want to see what we deleted, we can use 'RETURNING *'

DELETE FROM users
WHERE username IS NULL
RETURNING *;

SELECT *
FROM users;

-- "id"		"username"	"email"			"age"
-- 1		"tester"	"tester@gmail.com"	23


ALTER TABLE users
ALTER COLUMN username
SET NOT NULL;


INSERT INTO users(email, age) 
VALUES
	('gamer@gmail.com',35);


SELECT *
FROM users;

-- ERROR:  null value in column "username" of relation "users" violates not-null constraint
-- DETAIL:  Failing row contains (3, null, gamer@gmail.com, 35).
-- This means we should enter a username otherwise it doesn't possible to enter data

INSERT INTO users(username,email, age) 
VALUES
	('gamer','gamer@gmail.com',35);
	
	
SELECT *
FROM users;


-- NULL doesn't mean zero (0). They are not the same.
-- NULL means that no data exists or it is missing.
-- Blank doesn't mean NULL either. Blank means it is okay whether we have for example email or not.
-- Blank doesn't mean NULL either. Instead, a blank signifies that it's acceptable whether we have, for example, an email or not.


INSERT INTO users(username,email,age) 
VALUES
	(' ','architect@gmail.com',38);
	

SELECT *
FROM users;


"id"	"username"	"email"			"age"
1	"tester"	"tester@gmail.com"	23
5	"gamer"		"gamer@gmail.com"	35
6			"architect@gmail.com"	38

