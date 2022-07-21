SELECT * FROM books
WHERE pages = (SELECT Min(pages)
              FROM books);
              
SELECT title, pages FROM books
WHERE pages = (SELECT Max(pages)
              FROM books);

SELECT title, pages FROM books
WHERE pages = (SELECT Min(pages)
              FROM books);
      
-- MORE Faster Way
SELECT * FROM books
ORDER BY pages ASC LIMIT 1;

SELECT title, pages FROM books
ORDER BY pages ASC LIMIT 1;

SELECT * FROM books
ORDER BY pages DESC LIMIT 1;