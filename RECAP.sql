-- 1. İsminde en az 4 tane e veya E bulunan kaç film vardır?
SELECT COUNT(title)
FROM film
WHERE title ILIKE('%e%e%e%e%');

output = 34


SELECT title
FROM film
WHERE title ILIKE('%e%e%e%e%');
-- We can retrieve the names of films whose titles contain exactly four 'e' letters using this query.


-- 2. Kategori isimlerini ve kategori başına düşen film sayısını yazınız.
SELECT category.name, COUNT(*)
FROM category
INNER JOIN film_category ON film_category.category_id = category.category_id
INNER JOIN film ON film.film_id = film_category.film_id
GROUP BY category.name;


-- 3. En çok film bulunan rating kategorisi hangisidir?
SELECT film.rating, COUNT(*) AS amount
FROM film
GROUP BY film.rating
ORDER BY amount DESC
LIMIT 1;



-- 4. Film tablosunda 'K' karakteri ile başlayan en uzun ve raplacement_cost en az olan 3 filmi sıralayınız.
SELECT film.title, film.length, film.replacement_cost
FROM film
WHERE title LIKE('K%')
ORDER BY film.length DESC, replacement_cost ASC
LIMIT 3;


-- 5. En çok alışveriş yapan müşterinin adı nedir?
SELECT customer.first_name, customer.last_name, SUM(amount)
FROM customer
INNER JOIN payment
ON customer.customer_id = payment.customer_id
GROUP BY customer.first_name, customer.last_name
ORDER BY SUM(amount) DESC
LIMIT 1;


