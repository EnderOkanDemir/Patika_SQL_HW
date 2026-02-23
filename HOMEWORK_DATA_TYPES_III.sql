-- Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.
  
SELECT DISTINCT CITY
FROM STATION
WHERE LEFT(CITY,1) NOT IN('A','E','I','O','U') AND RIGHT(CITY,1) NOT IN('a','e','i','o','u');



-- Query the Name of any student in STUDENTS who scored higher than  Marks. Order your output by the last three characters of each name. 
-- If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.
  
SELECT Name
FROM STUDENTS
WHERE Marks > 75
ORDER BY RIGHT(Name, 3), ID ASC;



-- Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.
  
SELECT name
FROM Employee
ORDER BY name ASC;



-- Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than  per month who have been employees for less than  months. 
--Sort your result by ascending employee_id.
  
SELECT name
FROM Employee
WHERE salary > 2000 AND months < 10
ORDER BY employee_id ASC;



-- You are given three tables: Students, Friends and Packages. Students contains two columns: ID and Name. 
-- Friends contains two columns: ID and Friend_ID (ID of the ONLY best friend). 
-- Packages contains two columns: ID and Salary (offered salary in $ thousands per month).
-- Write a query to output the names of those students whose best friends got offered a higher salary than them. 
-- Names must be ordered by the salary amount offered to the best friends. It is guaranteed that no two students got same salary offer.

SELECT s.name
FROM friends as f
JOIN students as s on s.id = f.id
JOIN packages as ssalaries on f.id = ssalaries.id
JOIN packages as fsalaries on f.friend_id = fsalaries.id
where fsalaries.salary > ssalaries.salary
order by fsalaries.salary;



-- You are given a table, Functions, containing two columns: X and Y.
-- Two pairs (X1, Y1) and (X2, Y2) are said to be symmetric pairs if X1 = Y2 and X2 = Y1.
-- Write a query to output all such symmetric pairs in ascending order by the value of X. List the rows such that X1 ≤ Y1.

select distinct a.ax1,a.ay1 from
(
select a.x1 ax1, a.y1 ay1 , a.r1 ar1 , b.r2 br2 from
(select row_number() over(order by f1.x) r1 , 
       f1.x x1, 
       f1.y y1 from functions f1) a
inner join
(select row_number() over(order by f2.x) r2 , 
       f2.x x2, 
       f2.y y2 from functions f2) b
on a.x1 = b.y2
and b.x2 = a.y1
) a
where 
a.ar1<>a.br2
and a.ax1 <= a.ay1
order by a.ax1
;
