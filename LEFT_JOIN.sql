SELECT title, first_name, last_name
FROM author
INNER JOIN book 
ON book.author_id = author.id;

-- When we use an INNER JOIN to combine two tables, the output will display the intersection of these two tables.
-- We cannot see the row that exists in only one table as output unless it also exists in both tables.
-- When we use a LEFT JOIN to combine two tables, the output will display the table on the left first, followed by matching it with the second table. 
-- When we use a LEFT JOIN to combine two tables, the output will display the table on the left first, and then match it with the second table. 
-- This means we will see the all rows of the table at left, but we won't see the all rows of the tables we are combining.
-- This means we will see the all rows of the table at left, but we won't see the rows that exist in table two and don't exist in table one.

SELECT first_name, last_name, title
FROM author
LEFT JOIN book 
ON author.id = book.author_id;

-- 'author' is the first table and it places on the left, 'book' is the second table and places on the right


SELECT title, first_name, last_name
FROM book
LEFT JOIN author 
ON author.id = book.author_id;

-- 'book' is the first table and it places on the left, 'author' is the second table and places on the right


INSERT INTO book (title, page_number, author_id)
VALUES 
	('Gülün Adı', 466, 44);

-- ERROR:  insert or update on table "book" violates foreign key constraint "book_author_id_fkey"
-- DETAIL:  Key (author_id)=(44) is not present in table "author". 

ALTER TABLE book
DROP CONSTRAINT book_author_id_fkey;

-- Or go to book - constraints - book_author_id_fkey_right clicking - delete
	

INSERT INTO book (title, page_number, author_id)
VALUES 
	('Gülün Adı', 466, 44);
	


SELECT title, first_name, last_name
FROM book
LEFT JOIN author 
ON author.id = book.author_id;

-- There will be null values in the first_name and last_name columns because we are adding data to the book table but not to the author table.


-- If we don't want to the null values we can write the query with INNER JOIN or like following,

SELECT title, first_name, last_name
FROM book
LEFT JOIN author 
ON author.id = book.author_id
WHERE first_name is NOT NULL ;


SELECT title, first_name, last_name
FROM book
LEFT JOIN author 
ON author.id = book.author_id
WHERE first_name is NOT NULL
ORDER BY title;


SELECT title, first_name, last_name
FROM book
LEFT JOIN author 
ON author.id = book.author_id
WHERE first_name is NOT NULL
ORDER BY author.first_name;

or,

SELECT title, first_name, last_name
FROM book
LEFT JOIN author 
ON author.id = book.author_id
WHERE first_name is NOT NULL
ORDER BY first_name;

or,

SELECT book.title, author.first_name, author.last_name
FROM book
LEFT JOIN author 
ON author.id = book.author_id
WHERE first_name is NOT NULL
ORDER BY first_name;


