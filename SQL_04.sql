SELECT * FROM customer;
SELECT * FROM customer WHERE customer_id IN (341, 342, 343, 345);

CREATE TABLE customer3 AS SELECT * FROM customer WHERE customer_id IN (341, 342, 343, 345);
SELECT * FROM customer3;

SELECT * FROM payment;

SELECT * FROM payment WHERE customer_id=341;

SELECT * FROM payment WHERE customer_id=342;

SELECT * FROM payment WHERE payment_id IN (17503, 17509, 17510, 17512, 17513, 17514, 17519, 17520);

SELECT * FROM customer3;
SELECT * FROM payment3;

SELECT * FROM customer3
JOIN payment3
ON customer3.customer_id = payment3.customer_id;

SELECT * FROM customer3 c
JOIN payment3 p
ON c.customer_id = p.customer_id;

SELECT * FROM customer3 c
INNER JOIN payment3 p
ON c.customer_id = p.customer_id;

SELECT * FROM customer3 c
LEFT JOIN payment3 p
ON c.customer_id = p.customer_id;

SELECT * FROM customer3 c
RIGHT JOIN payment3 p
ON c.customer_id = p.customer_id;

SELECT * FROM customer3 c
FULL JOIN payment3 p
ON c.customer_id = p.customer_id;

