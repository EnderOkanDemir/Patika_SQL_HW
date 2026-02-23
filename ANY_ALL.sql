SELECT first_name, last_name
FROM author
WHERE id =
(
	SELECT id
	FROM book
	WHERE title = 'Apache Territory'
);


SELECT first_name, last_name
FROM author
WHERE id =
(
	SELECT id
	FROM book
	WHERE title = 'Apache Territory' OR title = 'White Banners' OR title = 'Trials of Muhammed Ali'
);

-- ERROR:  more than one row returned by a subquery used as an expression
-- If we want to use all subqueries' output as input for the first SELECT query, we should use ANY function before the subqueries

SELECT first_name, last_name
FROM author
WHERE id = ANY
(
	SELECT id
	FROM book
	WHERE title = 'Apache Territory' OR title = 'White Banners' OR title = 'Trials of Muhammed Ali'
);



SELECT first_name, last_name
FROM author
WHERE id > ANY
(
	SELECT id
	FROM book
	WHERE title = 'Apache Territory' OR title = 'White Banners' OR title = 'Trials of Muhammed Ali, The'
);
-- This query will return any data which has a bigger id than the id of 'Apache Territory' or 'White Banners' or 'Trials of Muhammed Ali'


SELECT first_name, last_name
FROM author
WHERE id > ALL
(
	SELECT id
	FROM book
	WHERE title = 'Apache Territory' OR title = 'White Banners' OR title = 'Trials of Muhammed Ali'
);

-- This query will return all data with an ID greater than the highest ID among the following books: 'Apache Territory,' 'White Banners,' or 'Trials of Muhammed Ali.
