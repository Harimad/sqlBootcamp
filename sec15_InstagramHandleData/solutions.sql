-- 1. 사용 기간이 가장 오래된 사용자 5명 찾기

SELECT * 
FROM users
ORDER BY created_at
LIMIT 5;

-- 2. 가장 인기 있는 등록일
SELECT 
	DAYNAME(created_at) AS day,
    COUNT(*) AS total
FROM users
GROUP BY day
ORDER BY total DESC
LIMIT 2;

-- 3. 사용률이 저조한 사용자 식별하기 (사진이 없는 사용자)
SELECT username
FROM users
LEFT JOIN photos
    ON users.id = photos.user_id
WHERE photos.id IS NULL;

-- -- Way 2
SELECT 
    users.id,
	username,
    IFNULL(image_url, 'No') AS 'upload?'
FROM users
LEFT JOIN photos
    ON users.id = photos.user_id
WHERE image_url is NULL;

-- 4.
SELECT
    username,
	photos.id,
	photos.image_url,
    COUNT(*) AS 'total'
FROM photos
INNER JOIN likes
	ON photos.id = likes.photo_id
INNER JOIN users
	ON photos.user_id = users.id
GROUP BY photos.image_url
ORDER BY total DESC
LIMIT 5;

-- 번외. 한명 당 평균 몇 개의 글을 올리는가?
-- -- 5-1 한 명씩 업로드 개수 먼저 구함
SELECT
	username,
    COUNT(*) AS 'total'
FROM users
LEFT JOIN comments
    ON users.id = comments.user_id
GROUP BY users.id
ORDER BY total DESC;
-- -- 5-1을 가지고 평균 구해냄
SELECT 
	ROUND(AVG(x.total), 0) AS avg_userpost,
    SUM(x.total) AS total_userpost
FROM 
(
    SELECT
        username,
        COUNT(*) AS 'total'
    FROM users
    LEFT JOIN comments
        ON users.id = comments.user_id
    GROUP BY users.id
    ORDER BY total DESC
) AS x;

-- 5. 사용자당 평균 사진 개수 계산하기

SELECT (SELECT Count(*) 
        FROM   photos) / (SELECT Count(*) 
                          FROM   users) AS avg; 
                          
-- 6. 가장 인기 있는 해시태그 5개 찾기
SELECT 
	photo_tags.tag_id,
    tags.tag_name,
    COUNT(*) AS total
FROM photo_tags
JOIN tags
    ON photo_tags.tag_id = tags.id
GROUP BY photo_tags.tag_id
ORDER BY total DESC
LIMIT 5;

-- 7-1.
