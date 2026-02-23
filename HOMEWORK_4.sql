1.film tablosunda bulunan replacement_cost sütununda bulunan birbirinden farklı değerleri sıralayınız.
SELECT DISTINCT(replacement_cost)
FROM film;


2.film tablosunda bulunan replacement_cost sütununda birbirinden farklı kaç tane veri vardır?
SELECT COUNT(DISTINCT replacement_cost)
FROM film;
-- output = 21


3.film tablosunda bulunan film isimlerinde (title) kaç tanesini T karakteri ile başlar ve aynı zamanda rating 'G' ye eşittir?
SELECT COUNT(title)
FROM film
WHERE title LIKE 'T%' AND rating = 'G';
-- output = 9

SELECT title, rating
FROM film
WHERE title LIKE 'T%' AND rating = 'G';


4.country tablosunda bulunan ülke isimlerinden (country) kaç tanesi 5 karakterden oluşmaktadır?
SELECT country
FROM country
WHERE length(country)=5;

SELECT COUNT(*)
FROM country
WHERE length(country)=5;

SELECT COUNT(country)
FROM country
WHERE length(country)=5;


5.city tablosundaki şehir isimlerinin kaç tanesi 'R' veya r karakteri ile biter?
SELECT city
FROM city
WHERE city ILIKE('%r');

SELECT COUNT(city)
FROM city
WHERE city ILIKE('%r');

