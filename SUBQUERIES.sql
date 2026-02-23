***FIRST QUERY***
SELECT *
FROM book
WHERE page_number > 466;
-- In this query the page_number is a static value


***SECOND QUERY***
SELECT page_number
FROM book
WHERE title = 'Gülün Adı';

***SUBQUERY EXAMPLE***
SELECT *
FROM book
WHERE page_number > 
(
	SELECT page_number
	FROM book
	WHERE title = 'Gülün Adı'
)
;
-- In this query, the page_number is a dynamic value.


SELECT title, page_number,(SELECT MAX(page_number) FROM book)
FROM book
WHERE page_number >
(
	SELECT page_number
	FROM book
	WHERE title = 'Gülün Adı'
);


SELECT title, page_number,(SELECT MAX(page_number) FROM book), ((SELECT MAX(page_number) FROM book) - page_number) AS difference
FROM book
WHERE page_number >
(
	SELECT page_number
	FROM book
	WHERE title = 'Gülün Adı'
);
