-- 🔥 페이지 합계
SELECT SUM(pages) FROM books;

-- 🔥 출간연도 합계
SELECT SUM(released_year) FROM books;

-- 🔥 저자 풀 네임을 그룹화 하고 페이지 합계 구하기
SELECT author_fname, author_lname, SUM(pages)
FROM books
GROUP BY author_lname, author_fname;

-- 🔥 저자 풀 네임을 그룹화 하고 출간연도 합계 구하기
SELECT author_fname, author_lname, SUM(released_year)
FROM books
GROUP BY author_lname, author_fname;

