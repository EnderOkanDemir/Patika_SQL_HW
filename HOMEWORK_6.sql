--Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.

--1. film tablosunda bulunan rental_rate sütunundaki değerlerin ortalaması nedir?
SELECT AVG(rental_rate)
FROM film;
-- output = 2.9800000000000000


SELECT ROUND(AVG(rental_rate),3)
FROM film;
-- output = 2.980


--2. film tablosunda bulunan filmlerden kaç tanesi 'C' karakteri ile başlar?
SELECT COUNT(*)
FROM film
WHERE title LIKE('C%');

SELECT COUNT(title)
FROM film
WHERE title LIKE('C%');


--3. film tablosunda bulunan filmlerden rental_rate değeri 0.99 a eşit olan en uzun (length) film kaç dakikadır?
SELECT MAX(length)
FROM film
WHERE rental_rate = 0.99;


--4. film tablosunda bulunan filmlerin uzunluğu 150 dakikadan büyük olanlarına ait kaç farklı replacement_cost değeri vardır?
SELECT COUNT(DISTINCT replacement_cost)
FROM film
WHERE length > 150;
-- output = 21

SELECT COUNT(DISTINCT replacement_cost) AS distinct_replacement_cost_count
FROM film
WHERE length > 150;
-- output = 21
