-- It is like creating a pivot table in Excel. We try to make unique the things that repeat in a column.
SELECT MAX(length)
FROM film;

SELECT MAX(length)
FROM film
WHERE rental_rate = 0.99;


SELECT MAX(length)
FROM film
WHERE rental_rate = 2.99;

-- If we want to find the max length for each renatal_rate value, we should use the GROUP BY function
SELECT MAX(length)
FROM film
GROUP BY rental_rate;


SELECT rental_rate, COUNT(*) 
FROM film
GROUP BY rental_rate;


SELECT rental_rate,rating, COUNT(*) 
FROM film
GROUP BY rental_rate,rating;


SELECT rating, COUNT(*) 
FROM film
GROUP BY rating;


SELECT replacement_cost, MIN(length)
FROM film
GROUP BY replacement_cost;


SELECT MIN(length)
FROM film
GROUP BY replacement_cost;


SELECT replacement_cost,rating, MIN(length)
FROM film
GROUP BY replacement_cost,rating;


SELECT replacement_cost,rental_rate, MIN(length)
FROM film
GROUP BY replacement_cost,rental_rate;
-- 63 output (3 unique rental costs and 21 unique replacement_cost options gives us 63 output)


SELECT DISTINCT(replacement_cost)
FROM film;
-- 21 output


SELECT COUNT (DISTINCT replacement_cost)
FROM film;
-- output = 21


SELECT COUNT (DISTINCT rental_rate)
FROM film;
-- output = 3


SELECT DISTINCT (rental_rate)
FROM film;
-- 3 output


SELECT replacement_cost,rental_rate, MIN(length)
FROM film
GROUP BY replacement_cost,rental_rate
ORDER BY replacement_cost;
-- If we don't specify whether 'ASC' or 'DESC', it assumes as 'ASC'


SELECT replacement_cost,rental_rate, MIN(length)
FROM film
GROUP BY replacement_cost,rental_rate
ORDER BY MIN(length);


SELECT replacement_cost,rental_rate, MIN(length)
FROM film
GROUP BY replacement_cost,rental_rate
ORDER BY MIN(length)
LIMIT 10;


SELECT replacement_cost,rental_rate, MIN(length)
FROM film
GROUP BY replacement_cost,rental_rate
ORDER BY MIN(length)
OFFSET 5
LIMIT 10;
