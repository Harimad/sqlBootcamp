-- π₯ νμ΄μ§ ν©κ³
SELECT SUM(pages) FROM books;

-- π₯ μΆκ°μ°λ ν©κ³
SELECT SUM(released_year) FROM books;

-- π₯ μ μ ν λ€μμ κ·Έλ£Ήν νκ³  νμ΄μ§ ν©κ³ κ΅¬νκΈ°
SELECT author_fname, author_lname, SUM(pages)
FROM books
GROUP BY author_lname, author_fname;

-- π₯ μ μ ν λ€μμ κ·Έλ£Ήν νκ³  μΆκ°μ°λ ν©κ³ κ΅¬νκΈ°
SELECT author_fname, author_lname, SUM(released_year)
FROM books
GROUP BY author_lname, author_fname;

