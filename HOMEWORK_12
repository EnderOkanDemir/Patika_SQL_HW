1. film tablosunda film uzunluğu length sütununda gösterilmektedir. Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?
SELECT COUNT(length)
FROM film
WHERE length >
(
	SELECT AVG(length)
	FROM film
);


2. film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?
SELECT COUNT(*)
FROM film
WHERE rental_rate =
(
	SELECT MAX(rental_rate)
	FROM film
);


3. film tablosunda en düşük rental_rate ve en düşün replacement_cost değerlerine sahip filmleri sıralayınız.
SELECT *
FROM film
WHERE rental_rate = 
(
    SELECT MIN(rental_rate)
    FROM film
)

INTERSECT

SELECT *
FROM film
WHERE replacement_cost = 
(
    SELECT MIN(replacement_cost)
    FROM film
);


4. payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.

SELECT customer.first_name,customer.last_name, payment.amount 
FROM customer
INNER JOIN payment 
ON payment.customer_id = customer.customer_id
WHERE amount =
(
	SELECT MAX(amount)
	FROM payment
);


SELECT customer.first_name, customer.last_name, SUM(payment.amount) AS total_payment
FROM customer
INNER JOIN payment ON payment.customer_id = customer.customer_id
GROUP BY customer.first_name, customer.last_name
ORDER BY total_payment DESC;
