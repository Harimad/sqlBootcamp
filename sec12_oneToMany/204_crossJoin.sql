-- George가 한 주문 건 찾기: 2단계 과정

SELECT id FROM customers WHERE last_name='George';
SELECT * FROM orders WHERE customer_id = 1;

-- George가 한 주문 건 찾기: 서브쿼리 사용하기

SELECT * FROM orders WHERE customer_id =
    (
        SELECT id FROM customers
        WHERE last_name='George'
    );

SELECT * FROM orders WHERE customer_id =1;

-- 강력한 크로스 조인
SELECT * FROM customers, orders;