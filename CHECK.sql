CREATE TABLE users
(
	id SERIAL PRIMARY KEY,
	username CHARACTER VARYING(20),
	email CHARACTER VARYING(20) NOT NULL,
	age INTEGER
);


INSERT INTO users (username, email, age)
VALUES 
	('tester', 'tester@gmail.com', 23),
	(' ', 'gamer@gmail.com', 35),
	('tester2', 'tester2@gmail.com', 44),
	('tester3', 'tester3@gmail.com', 55);
	

SELECT *
FROM users;


-- When entering data into any column, we need to apply specific validations to the data we are inputting.
-- For example, age can not be negative.

INSERT INTO users(username, email, age)
VALUES
	('gamer3', 'gamer3@gmail.com',-22);


SELECT *
FROM users;

-- As we see, in these conditions we can enter negative numbers into the age column.
-- What we want is to prevent entering negative numbers into the age column by using 'CHECK' constraints.
-- There are 2 ways to set 'CHECK' constraints to the specific columns :
-- First one is when we create a table, and the second one is by using the 'ALTER TABLE' function.


FIRST METHOD : ALTER TABLE

ALTER TABLE users
ADD CHECK (age > 18);

-- Output : ERROR:  check constraint "users_age_check" of relation "users" is violated by some row

DELETE FROM users
WHERE id = 5
RETURNING *;

SELECT *
FROM users;


ALTER TABLE users
ADD CHECK (age > 18);


INSERT INTO users(username, email, age)
VALUES
	('gamer3','gamer3@gmail.com', 15);

-- ERROR:  new row for relation "users" violates check constraint "users_age_check"
-- DETAIL:  Failing row contains (6, gamer3, gamer3@gmail.com, 15).



SECOND METHOD: CREATE TABLE

-- Write 'PostgreSQL 14 Constraints' to Google and find the document.
-- We can see an example of adding a 'CHECK' constraint to the price column.

CREATE TABLE products
(
	id SERIAL PRIMARY KEY,
	product_no INTEGER,
	name TEXT,
	price NUMERIC CHECK (price > 0)
);



CREATE TABLE products
(
	id SERIAL PRIMARY KEY,
	product_no INTEGER,
	name TEXT,
	price NUMERIC CONSTRAINT positive_price CHECK (price > 0)
);
-- In this example, we gave a name to our constraint.


CREATE TABLE products
(
	id SERIAL PRIMARY KEY,
	product_no INTEGER,
	name TEXT,
	price NUMERIC CHECK (price > 0),
	discounted_price NUMERIC CHECK (discounted_price > 0),
	CHECK (price > discounted_price)
);


SELECT *
FROM products;


INSERT INTO products(product_no, name, price, discounted_price)
VALUES
	(1, 'laptop', 50000,55000);

-- ERROR:  new row for relation "products" violates check constraint "products_check"
-- DETAIL:  Failing row contains (1, 1, laptop, 50000, 55000).


INSERT INTO products(product_no, name, price, discounted_price)
VALUES
	(1, 'laptop', 50000,42000);
	

SELECT *
FROM products;


INSERT INTO users(username, email, age)
VALUES 
	('gamer3','gamer3@gmail.com',19);
