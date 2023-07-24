-- film tablosundan 
-- 1. isminde en az 2 tane 'a' bulunan
-- 2. 100 dakikadan uzun
-- 3. replacement_cost 15' den büyük ve 25'ten küçük
-- 4. rental_rate 2.99 olan filmleri sıralayınız

SELECT *
FROM film
WHERE (title ILIKE('%a%a%')) AND (length > 100) AND (replacement_cost > 15 AND replacement_cost < 25) AND (rental_rate = 2.99);
-- 32 output


-- film tablosundan 
-- 1. 'T' ile başlayan filmlerin
-- 2. kaç farklı dakikaya sahip uzunlukları vardır?

SELECT COUNT(DISTINCT length)
FROM film
WHERE title LIKE('T%');
-- 37 output
