SELECT *
FROM book;


SELECT *
FROM book
ORDER BY page_number DESC
LIMIT 5;


SELECT *
FROM book
ORDER BY title
LIMIT 5;


-- We combine more than one SELECT query into one query set using UNION.
(
SELECT *
FROM book
ORDER BY page_number DESC
LIMIT 5
)
UNION
(
SELECT *
FROM book
ORDER BY title
LIMIT 5
);

-- There is one intersection row therefore we get 9 output.
-- Yet if we use UNION ALL, we will see the all rows including the intersection.

(
SELECT *
FROM book
ORDER BY page_number DESC
LIMIT 5
)
UNION ALL
(
SELECT *
FROM book
ORDER BY title
LIMIT 5
);

*** RULE 1 :

(
SELECT id, email     -- two columns: first one is integer and second one is character varying
FROM author
)
UNION
(
SELECT id, title     -- two columns: first one is integer and second one is character varying so we can combine them by using UNION.
FROM book
);


-- When we use UNION function to combine tables with their all columns, these table should have same number of columns.
-- If they don not we can only combine the same number of column for each table in the query.
(
SELECT id, email, first_name       -- three columns: first one is integer, second and the third one are character varying
FROM author
)
UNION
(
SELECT id, title		 	             -- two columns: first one is integer and second one is character varying so we can not combine them by using UNION.
FROM book
);

ERROR:  each UNION query must have the same number of columns
LINE 7: SELECT id, title    


*** RULE 2 :

(
SELECT id, email       -- two columns: first one is integer and second one is character varying
FROM author
)
UNION
(
SELECT id, page number -- two columns: first one is integer and second one is integer too. So we can not combine them by using UNION.
FROM book
);

ERROR:  UNION types character varying and integer cannot be matched
LINE 7: SELECT id, page_number

-- When writing a query and using the UNION function to combine two or more tables sequentially, 
it is essential to ensure that each 'SELECT query' has the same number of columns, and the data types of corresponding columns are also identical.

identical : birebir aynı, özdeş
corresponding : karşılık gelen


(
SELECT id, email  -- two columns: first one is integer and second one is character varying
FROM author
)
UNION
(
SELECT title, id	 	-- two columns: first one is character varying and second one is integer.
FROM book
);

ERROR:  UNION types integer and character varying cannot be matched
LINE 7: SELECT title, id

