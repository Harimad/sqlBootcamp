-- 1
CREATE TABLE inventory (
    item_name VARCHAR(100),
    price INT,
    quantity INT,
);

-- 3
SELECT CURRENT_TIME;
SELECT CURTIME();

-- 4
SELECT CURRENT_DATE;
SELECT CURDATE();

-- 5
SELECT CURRENT_DATE, DAYOFWEEK(CURRENT_DATE);
SELECT DAYOFWEEK(CURDATE());
SELECT DAYOFWEEK(NOW());
SELECT DATE_FORMAT(NOW(), '%w') + 1;

-- 6
SELECT CURRENT_DATE, DAYNAME(CURRENT_DATE);

-- 7
SELECT CURRENT_DATE, DATE_FORMAT(CURRENT_DATE, '%m/%d/%Y');

-- 8
SELECT CURDATE(), DATE_FORMAT(CURDATE(), '%M %D at %h:%i');

-- 9
CREATE TABLE tweets (
    content VARCHAR(150),
    username VARCHAR(100),
    created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO tweets (content, username)
VALUES('this is my first tweet', 'harimad');

SELECT * FROM tweets;

INSERT INTO tweets (content, username)
VALUES('this is my second tweet', 'harimad');

SELECT * FROM tweets;

