-- 더욱 바람직한 형태(이너 조인)
SELECT first_name, last_name, order_date, amount
FROM customers
JOIN orders
	ON customers.id = orders.customer_id
ORDER BY order_date;

SELECT first_name, last_name, SUM(amount) AS total_spent
FROM customers
JOIN orders
	ON customers.id = orders.customer_id
GROUP BY orders.customer_id
ORDER BY total_spent DESC;

-- 레프트 조인(LEFT JOINS)
SELECT * FROM customers
LEFT JOIN orders
	ON customers.id = orders.customer_id;
    
SELECT first_name, last_name, order_date, amount
FROM customers
LEFT JOIN orders
	ON customers.id = orders.customer_id;
    
SELECT first_name, last_name, IFNULL(SUM(amount), 0) AS total_spent
FROM customers
LEFT JOIN orders
	ON customers.id = orders.customer_id
GROUP BY customers.id
ORDER BY total_spent;

-- ---------------------------------------------
-- INNER , LEFT , RIGHT JOIN 정리
SELECT * FROM customers
INNER JOIN orders
	ON customers.id = orders.customer_id;

SELECT * FROM customers
LEFT JOIN orders
	ON customers.id = orders.customer_id;
    
SELECT * FROM customers
RIGHT JOIN orders
	ON customers.id = orders.customer_id;