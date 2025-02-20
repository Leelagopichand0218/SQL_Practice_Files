SELECT * FROM customer;

SELECT * FROM customer ORDER BY last_name;

SELECT * FROM customer WHERE last_name LIKE 'Wood%';

SELECT * FROM customer WHERE last_name LIKE 'wood%';

SELECT * FROM customer WHERE last_name ILIKE 'wood%';

SELECT * FROM customer WHERE last_name ILIKE 'woo__';

SELECT * FROM customer WHERE last_name ILIKE 'Bar_ett';

SELECT * FROM customer WHERE last_name ILIKE 'mor___';

SELECT * FROM customer WHERE last_name ILIKE 'mor%'; 

SELECT * FROM customer3 c
JOIN payment3 p
ON c.customer_id = p.customer_id;

SELECT c.customer_id, c.first_name, c.last_name, c.email, p.amount
FROM customer3 c
JOIN payment3 p
ON c.customer_id = p.customer_id;

SELECT c.customer_id, c.first_name, c.last_name, c.email, SUM(p.amount)
FROM customer3 c
JOIN payment3 p
ON c.customer_id = p.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name, c.email;

SELECT c.customer_id, c.first_name, c.last_name, c.email, SUM(p.amount) total_amount
FROM customer c
JOIN payment p
ON c.customer_id = p.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name, c.email
ORDER BY total_amount DESC;

SELECT c.customer_id, c.first_name, c.last_name, c.email, SUM(p.amount) total_amount
FROM customer c
JOIN payment p
ON c.customer_id = p.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name, c.email
ORDER BY total_amount DESC
LIMIT 20;

SELECT c.customer_id, p.customer_id, c.first_name, c.last_name, c.email, p.amount 
FROM customer3 c
LEFT JOIN payment3 p
ON c.customer_id = p.customer_id;

SELECT c.customer_id, p.customer_id, c.first_name, c.last_name, c.email, SUM(p.amount)
FROM customer3 c
LEFT JOIN payment3 p
ON c.customer_id = p.customer_id
GROUP BY c.customer_id, p.customer_id, c.first_name, c.last_name, c.email;

SELECT * FROM customer WHERE customer_id IN (
	SELECT DISTINCT customer_id FROM payment2
);

SELECT * FROM customer WHERE customer_id NOT IN (
	SELECT DISTINCT customer_id FROM payment2
);


SELECT c.customer_id, p.customer_id, c.first_name, c.last_name, c.email,p.amount
FROM customer c
JOIN payment2 p
ON c.customer_id = p.customer_id;

SELECT c.customer_id, p.customer_id, c.first_name, c.last_name, c.email, SUM(p.amount)
FROM customer c
JOIN payment2 p
ON c.customer_id = p.customer_id
GROUP BY c.customer_id, p.customer_id, c.first_name, c.last_name, c.email;

SELECT COUNT(*) FROM customer WHERE customer_id NOT IN (
	SELECT DISTINCT customer_id FROM payment2
);

SELECT c.customer_id, p.customer_id, c.first_name, c.last_name, c.email,p.amount
FROM customer c
LEFT JOIN payment2 p
ON c.customer_id = p.customer_id;

SELECT c.customer_id, p.customer_id, c.first_name, c.last_name, c.email, SUM(p.amount)
FROM customer c
LEFT JOIN payment2 p
ON c.customer_id = p.customer_id
GROUP BY c.customer_id, p.customer_id, c.first_name, c.last_name, c.email;

SELECT p.customer_id, c.first_name, c.last_name, c.email, SUM(p.amount)
FROM customer c
LEFT JOIN payment2 p
ON c.customer_id = p.customer_id
GROUP BY p.customer_id, c.first_name, c.last_name, c.email;

SELECT p.customer_id, p.amount
FROM customer c
LEFT JOIN payment2 p
ON c.customer_id = p.customer_id

SELECT p.customer_id, SUM(p.amount)
FROM customer c
LEFT JOIN payment2 p
ON c.customer_id = p.customer_id
GROUP BY p.customer_id;

SELECT c.customer_id, SUM(p.amount)
FROM customer c
LEFT JOIN payment2 p
ON c.customer_id = p.customer_id
GROUP BY c.customer_id;

SELECT customer_id, SUM(amount), count(amount)
FROM payment2
GROUP BY customer_id;

SELECT customer_id, count(amount), MIN(amount), MAX(amount), SUM(amount), AVG(amount), SUM(amount)/COUNT(amount)
FROM payment2
GROUP BY customer_id;

SELECT c.customer_id, p.customer_id, c.first_name, c.last_name, c.email, SUM(p.amount) total_amount, COUNT(p.amount)
FROM customer c
LEFT JOIN payment2 p
ON c.customer_id = p.customer_id
GROUP BY c.customer_id, p.customer_id, c.first_name, c.last_name, c.email
ORDER BY total_amount;

SELECT * FROM customer WHERE customer_id IN (184, 87, 477, 273);

SELECT * FROM customer WHERE customer_id IN (SELECT DISTINCT customer_id FROM payment);


