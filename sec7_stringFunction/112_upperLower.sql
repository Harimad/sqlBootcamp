SELECT UPPER('Hello World');

SELECT LOWER('Hello World');

SELECT UPPER(title) FROM books;

SELECT CONCAT('my favorite book is ', UPPER(title)) FROM books;

SELECT CONCAT('MY FAVORITE BOOK IS ', LOWER(title)) FROM books;

SELECT CONCAT('My Fovarite Book Is ', UPPER(title)) AS 'Lists' FROM books;