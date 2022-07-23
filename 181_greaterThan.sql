-- Grater Than
SELECT title, released_year FROM books ORDER BY released_year;

SELECT title, released_year FROM books WHERE released_year > 2000 ORDER BY released_year;

SELECT title, released_year FROM books WHERE released_year >= 2000 ORDER BY released_year;

SELECT title, stock_quantity FROM books;

SELECT title, stock_quantity FROM books WHERE stock_quantity >= 100;

SELECT 99 > 1;

SELECT 99 > 567;

SELECT 100 > 5;

SELECT -15 > 15;

SELECT 9 > -10;

SELECT 'a' > 'b';

SELECT 'A' > 'a';

SELECT 'A' >= 'a';

SELECT title, author_lname FROM books WHERE author_lname = 'Eggers';

SELECT title, author_lname FROM books WHERE author_lname = 'eggers';

SELECT title, author_lname FROM books WHERE author_lname = 'eGGers';

-- Less Than
SELECT title, released_year FROM books;
 
SELECT title, released_year FROM books
WHERE released_year < 2000;
 
SELECT title, released_year FROM books
WHERE released_year <= 2000;