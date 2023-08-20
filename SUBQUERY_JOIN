-- Kitap sayfası sayısı ortalama kitap sayfası sayısından fazla olan kitap isimlerini, yazar isim ve soyisimleri ile birlikte sıralayalım.

SELECT author.first_name, author.last_name, book.title, book.page_number
FROM author
INNER JOIN book 
ON author.id = book.author_id
WHERE page_number >
(
	SELECT AVG(page_number)
	FROM book
);


-- Film uzunluğu en fazla olan filmlerin isimlerini, uzunluğunu, actor ismi ve soyisimleri ile birlikte yazalım.

SELECT actor.first_name, actor.last_name, film.title, film.length
FROM actor
INNER JOIN film_actor ON film_actor.actor_id = actor.actor_id
INNER JOIN film ON film.film_id = film_actor.film_id
WHERE length = 
(
	SELECT MAX(length)
	FROM film
);
