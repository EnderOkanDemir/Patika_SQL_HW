-- UPDATE <table_name>
-- SET column1 = value1,
-- 	column2 = value2
-- 	... 
-- WHERE condition


UPDATE author
SET first_name = 'Emrah Safa',
	last_name = 'Gürkan',
	email = 'emrah@gurkan.com',
	birthday = '1980-01-01'
WHERE id = 10;


UPDATE author
SET first_name = 'XXXX',
	last_name = 'YYYY'
WHERE first_name LIKE 'V%';


UPDATE author 
SET last_name = 'UPDATE'
WHERE first_name = 'Bronson'
RETURNING *;
-- Using RETURNING * we can see what has changed in the table
