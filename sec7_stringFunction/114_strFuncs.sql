-- No1. Reverse and Uppercasethe following sentence
-- "Why does my cat look at me with such hatred?"

SELECT UPPER(REVERSE('Why does my cat look at me with such hatred?'));
-- 실행결과
-- ?DERTAH HCUS HTIW EM TA KOOL TAC YM SEOD YHW
-- ----------------------------------------------------------------------

-- No2. What Does This Print Out?
SELECT
	REPLACE
    (
    	CONCAT('I', ' ', 'like', ' ', 'cats'),
        ' ',
        '-'
    );

-- 실행결과
-- 'I-like-cats'
-- ----------------------------------------------------------------------

-- No3. Replace spaces in titles with '->'
# SELECT * FROM books;
SELECT REPLACE(title, ' ', '->') AS title from books;

# No4. Print This Out
SELECT author_lname AS forward, REVERSE(author_lname) AS backwards FROM books;

# No5. You Know What To Do!
SELECT UPPER(CONCAT(author_fname, ' ', author_lname)) AS 'full name in caps' FROM books;

# No6. Make This Happen!
SELECT CONCAT(title, ' was released in ', released_year) AS 'blurb' FROM books;

# No7. Print book titles and the length of each titles
SELECT title, CHAR_LENGTH(title) AS 'character count' FROM books;

# No8. Last One, I Promise!
SELECT 
	CONCAT(SUBSTRING(title, 1, 10), '...') AS 'short title',
	CONCAT(author_lname, ',', author_fname) AS 'author',
    CONCAT(stock_quantity, ' in stock') AS 'quantity'
FROM books;