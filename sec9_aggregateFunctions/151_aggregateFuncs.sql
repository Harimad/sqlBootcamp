-- 1
SELECT COUNT(*) FROM books;

-- 2 
SELECT released_year, COUNT(released_year)
FROM books
GROUP BY released_year;

-- 3
SELECT SUM(stock_quantity) FROM books;

-- 4
SELECT author_fname, author_lname, AVG(released_year)
FROM books
GROUP BY author_fname, author_lname;

-- 5 (Way 1)
SELECT
	CONCAT (author_fname, ' ', author_lname)
    AS 'full name',
    pages
FROM books
ORDER BY pages DESC
LIMIT 1;

-- 5 (Way 2)
SELECT 
	CONCAT(author_fname, ' ', author_lname) AS 'full name',
	pages
FROM books 
GROUP BY author_fname, author_lname
ORDER BY pages DESC
LIMIT 1;

-- 6
SELECT 
	released_year AS 'year', 
	COUNT(released_year) AS '# books', 
	AVG(pages) AS 'avg pages' 
FROM books 
GROUP BY released_year;
