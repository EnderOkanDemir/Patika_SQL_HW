SELECT *
FROM customer
WHERE first_name = 'Mary';


SELECT *
FROM customer
WHERE first_name LIKE 'M%';  


SELECT first_name,last_name
FROM customer
WHERE first_name LIKE 'Ma%';


SELECT first_name,last_name
FROM customer
WHERE first_name LIKE 'A%y';


SELECT *
FROM customer
WHERE first_name LIKE 'A%' AND last_name LIKE 'A%';


SELECT first_name,last_name
FROM customer
WHERE first_name ILIKE 'a%y';
-- ILIKE  is not case sensetive and we can use it if we don't want to use upper case


SELECT first_name,last_name
FROM customer
WHERE first_name NOT ILIKE 'a%y';


SELECT first_name,last_name
FROM customer
WHERE first_name LIKE 'J_an';
--  Looking for the customer whose name starts with 'J' and ends with 'an'. Underscore is using just for one letter.


SELECT first_name,last_name
FROM customer
WHERE first_name LIKE 'J_';
-- Output is "Jo" "Fowler"
-- Underscore represents only 1 letter here


SELECT first_name,last_name
FROM customer
WHERE first_name ILIKE 'j%n';


SELECT *
FROM actor
WHERE first_name LIKE 'T_m';


SELECT *
FROM actor
WHERE first_name ~~ 'T_m';
-- We can also use ~~ instead of LIKE


SELECT *
FROM actor
WHERE first_name ~~* 'T_m';
-- We can also use ~~* instead of ILIKE


SELECT *
FROM actor
WHERE first_name !~~* 'T_m';
-- We can also use !~~* instead of NOT ILIKE
