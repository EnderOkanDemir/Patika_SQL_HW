-- Query the two film name in film with the shortest and longest film names, as well as their respective lengths (i.e.: number of characters in the name). 
-- If there is more than one smallest or largest film, choose the one that comes first when ordered alphabetically.

WITH ORDERED AS (
    SELECT title, LENGTH(title) AS title_length
    FROM film
    ORDER BY LENGTH(title) DESC
    LIMIT 1
),
SHORTEST AS (
    SELECT title, LENGTH(title) AS title_length
    FROM film
    ORDER BY LENGTH(title) ASC
    LIMIT 1
)

SELECT title, title_length
FROM ORDERED

UNION ALL

SELECT title, title_length
FROM SHORTEST;

-------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). 
-- If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.

WITH ORDERED AS (
    SELECT CITY, LENGTH(CITY) AS LCITY, rank() OVER (
        PARTITION BY LENGTH(CITY) 
        ORDER BY CITY ) AS RANGO
    FROM STATION
    ORDER BY LCITY, CITY, RANGO
)
    SELECT CITY, LCITY FROM ORDERED 
    WHERE LCITY = (SELECT MIN(LCITY) FROM ORDERED)
    AND RANGO = 1
UNION 
    SELECT CITY, LCITY FROM ORDERED
    WHERE LCITY = (SELECT MAX(LCITY) FROM ORDERED)
    AND RANGO = 1;
