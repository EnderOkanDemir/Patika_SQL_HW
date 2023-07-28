SELECT rental_rate, COUNT(*)
FROM film
GROUP BY rental_rate;


SELECT rental_rate, COUNT(*)
FROM film
GROUP BY rental_rate
HAVING COUNT(*) > 325;
-- We can write the same query in another way like below.
-- Since we know which rental_rate we don't want then we can write a query by using 'WHERE'

SELECT rental_rate, COUNT(*)
FROM film
WHERE rental_rate != 2.99 
GROUP BY rental_rate;


SELECT COUNT(*)
FROM payment;
-- output = 14596


SELECT staff_id, COUNT(*)
FROM payment
GROUP BY staff_id;


SELECT staff_id, COUNT(*)
FROM payment
GROUP BY staff_id
HAVING COUNT(*) > 7300


SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id;


SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 100
ORDER BY SUM(amount) DESC;


SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 100
ORDER BY SUM(amount) DESC
LIMIT 3;
