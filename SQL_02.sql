SELECT * FROM payment2;
SELECT MAX(amount) FROM payment2;

SELECT * FROM payment2;
SELECT * FROM payment2 WHERE payment_id = 17504;
UPDATE payment2 SET amount = 15.99 WHERE payment_id = 17504;
SELECT * FROM payment2 WHERE payment_id = 17504;

SELECT * FROM payment2 WHERE customer_id = 454 and staff_id = 2;

UPDATE payment2 SET amount = NULL WHERE customer_id = 454 and staff_id = 2;

SELECT * FROM payment2 WHERE amount IS NULL;

SELECT * FROM payment2 WHERE amount IS NOT NULL;

SELECT * FROM payment;

SELECT DISTINCT amount FROM payment ORDER BY amount DESC;

SELECT DISTINCT amount FROM payment ORDER BY amount DESC OFFSET 2;

SELECT DISTINCT amount FROM payment ORDER BY amount DESC LIMIT 5 OFFSET 2;

SELECT * FROM payment;

SELECT * FROM payment WHERE customer_id = 443;

SELECT amount FROM payment WHERE customer_id = 443;

SELECT SUM(amount) FROM payment WHERE customer_id = 443;

SELECT SUM(amount) FROM payment WHERE customer_id = 444;

SELECT * FROM payment WHERE customer_id IN (443,444);

SELECT amount FROM payment WHERE customer_id IN (443,444);

SELECT SUM(amount) FROM payment WHERE customer_id IN (443,444);

SELECT * FROM payment
WHERE customer_id IN (443,444);

SELECT customer_id, SUM(amount) FROM payment
WHERE customer_id IN (443,444)
GROUP BY customer_id;


SELECT customer_id, SUM(amount) FROM payment 
GROUP BY customer_id;

SELECT customer_id, SUM(amount) FROM payment
GROUP BY customer_id
ORDER BY sum;

SELECT customer_id AS cid, amount AS amt FROM payment;

SELECT customer_id cid, amount amt FROM payment;

SELECT customer_id, SUM(amount) FROM payment
GROUP BY customer_id
ORDER BY sum;

SELECT customer_id, SUM(amount) total_amount FROM payment
GROUP BY customer_id;

SELECT customer_id, SUM(amount) total_amount FROM payment
GROUP BY customer_id
ORDER BY total_amount;

SELECT customer_id, SUM(amount) total_amount FROM payment
GROUP BY customer_id
ORDER BY total_amount DESC;


SELECT * FROM payment;
SELECT customer_id, amount FROM payment;


SELECT customer_id, SUM(amount) FROM payment
GROUP BY customer_id;


SELECT customer_id, SUM(amount) total_amount FROM payment
GROUP BY customer_id;


SELECT customer_id, SUM(amount) total_amount FROM payment
GROUP BY customer_id
ORDER BY total_amount DESC;

SELECT customer_id, SUM(amount) total_amount FROM payment
GROUP BY customer_id
ORDER BY total_amount DESC
LIMIT 2;

SELECT customer_id, SUM(amount) FROM payment
GROUP BY customer_id;








SELECT * FROM payment2;

SELECT * FROM payment2 ORDER BY amount DESC;

SELECT * FROM payment2 WHERE customer_id = 341;

SELECT SUM(amount) FROm payment2 WHERE customer_id = 341;

SELECT customer_id, SUM(amount) FROM payment2
GROUP BY customer_id;

SELECT customer_id, SUM(amount) total_amount FROM payment2
GROUP BY customer_id ORDER BY total_amount DESC;

SELECT * FROM payment2 WHERE customer_id IN (341, '403');

SELECT * FROM payment2 WHERE customer_id IN (341, '403');

UPDATE payment2 SET amount = NULL WHERE customer_id IN (341, '403');

SELECT * FROM PAYMENT2;

SELECT customer_id, SUM(amount) total_amount FROM payment2
GROUP BY customer_id 
HAVING SUM(amount) IS NOT NULL
ORDER BY total_amount DESC;

SELECT * FROM customer WHERE customer_id = 431;

SELECT first_name, last_name, email, address_id FROM customer 
WHERE customer_id = 431;

SELECT * FROM address WHERE address_id = 436;

SELECT phone FROM address WHERE address_id = 436;

SELECT * FROM payment;

SELECT * FROM customer;

SELECT * FROM payment
JOIN customer
ON payment.customer_id = customer.customer_id;

SELECT * FROM payment p
JOIN customer c
ON p.customer_id = c.customer_id;

SELECT * FROM payment p
JOIN customer c
ON p.customer_id = c.customer_id;

SELECT p.customer_id, p.amount, * FROM payment p
JOIN customer c
ON p.customer_id = c.customer_id;

SELECT p.customer_id, p.amount, c.first_name, c.last_name,c.email FROM payment p
JOIN customer c
ON p.customer_id = c.customer_id;

SELECT * FROM payment p
JOIN customer c
ON p.customer_id = c.customer_id
WHERE p.customer_id = 431;

SELECT p.customer_id, SUM(p.amount) FROM payment p
JOIN customer c
ON p.customer_id = c.customer_id
WHERE p.customer_id = 431
GROUP BY p.customer_id;

SELECT p.customer_id,c.email,SUM(p.amount) FROM payment p
JOIN customer c
ON p.customer_id = c.customer_id
WHERE p.customer_id = 431
GROUP BY p.customer_id, c.email;

SELECT p.customer_id, c.first_name, c.last_name, c.email,SUM(p.amount) FROM payment p
JOIN customer c
ON p.customer_id = c.customer_id
WHERE p.customer_id = 431
GROUP BY p.customer_id, c.first_name, c.last_name, c.email;

SELECT p.customer_id, c.first_name, c.last_name, c.email,SUM(p.amount) total_amount FROM payment p
JOIN customer c
ON p.customer_id = c.customer_id
GROUP BY p.customer_id, c.first_name, c.last_name, c.email
ORDER BY total_amount DESC;

SELECT p.customer_id, c.first_name, c.last_name, c.email,SUM(p.amount) total_amount FROM payment2 p
JOIN customer c
ON p.customer_id = c.customer_id
GROUP BY p.customer_id, c.first_name, c.last_name, c.email
HAVING SUM(p.amount) IS NOT NULL
ORDER BY total_amount DESC;

SELECT * FROM payment2 p
JOIN customer c
ON p.customer_id = c.customer_id;

SELECT * FROM PAYMENT2;

SELECT * FROM payment2 p
INNER JOIN customer c
ON p.customer_id = c.customer_id;

SELECT * FROM payment2 p
RIGHT JOIN customer c
ON p.customer_id = c.customer_id;

SELECT * FROM payment2 ;
SELECT * FROM customer;



















