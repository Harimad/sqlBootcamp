-- 1
SELECT 10 != 10; -- 0
SELECT 15 > 14 && 99 - 5 <= 94; -- 1
SELECT 1 IN (5, 3) || 9 BETWEEN 8 AND 10; -- 1

-- 2
SELECT released_year FROM books WHERE released_year < 1980;

-- 3
SELECT title, author_lname FROM books
WHERE 
	author_lname = 'Eggers' OR
    author_lname = 'Chabon';

SELECT title, author_lname FROM books
WHERE author_lname IN ('Eggers', 'Chabon');

-- 4
SELECT author_lname, released_year FROM books
WHERE
    released_year > 2000 AND
    author_lname = 'Lahiri';
    
-- 5
SELECT pages FROM books
WHERE
    pages BETWEEN 100 AND 200;
    
SELECT pages FROM books
WHERE
    pages >= 100 && pages <= 200;

-- 6
SELECT title, author_lname FROM books
WHERE 
    author_lname LIKE 'C%' OR 
    author_lname LIKE 'S%';
    
SELECT title, author_lname FROM books
WHERE
    SUBSTR(author_lname, 1, 1) = 'C' OR
    SUBSTR(author_lname, 1, 1) = 'S';
    
SELECT title, author_lname FROM books
WHERE SUBSTR(author_lname, 1, 1) IN ('C', 'S');
    
-- 7
SELECT title, author_lname,
    CASE
		WHEN title LIKE '%stories%' THEN 'Short Stories'
        WHEN title LIKE 'Just Kids' THEN 'Memoir'
        WHEN title LIKE 'A Heartbreaking Work of Staggering Genius' THEN 'Memoir'
        ELSE 'Novel'
    END AS 'TYPE'
FROM books;
    
SELECT title, author_lname,
    CASE
    	WHEN title Like '%stories%' THEN 'Short Stories'
        WHEN title = 'Just Kids' OR title = 'A Heartbreaking Work of Staggering Genius' THEN 'Memoir'
        ELSE 'Novel'
    END AS TYPE
FROM books;
    
-- 8
SELECT 
	title, 
	author_lname,
    author_fname,
    CASE
    	WHEN COUNT(*) = 1 THEN '1 book'
        ELSE CONCAT(COUNT(*), ' books') 
    END AS 'COUNT'
FROM books
GROUP BY author_fname, author_lname
ORDER BY author_lname;
