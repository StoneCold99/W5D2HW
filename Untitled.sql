-- Select all records from actor table query
-- * all columns 
-- columns named in the SELECT statement will show up in the output


SELECT *
FROM actor;

-- Query for actor first & last name
SELECT first_name, last_name
FROM actor;

-- WHERE clause is going to bring back informations 
SELECT first_name, last_name
FROM actor
WHERE first_name = 'Nick';

-- Query using LIKE, LIKE is similar to  = but a bit more forgiving
-- % wild card character stands for anything that can occupy that space
-- Query for any name that starts with J 
SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'J%';

-- ___ placeholders for characters
-- Query for 3 letter words for first_name that start with K
SELECT first_name, last_name
FROM actor 
WHERE first_name LIKE 'K___';

-- comparing operators are:
-- Greater than >
-- less than <
-- greater or equal >=
-- less than or equal <=
-- not equal <>
SELECT *
FROM payment;

-- Query for data that shows customers paid amount
-- greater than $2.99

SELECT customer_id, amount 
FROM payment
WHERE amount > 2.99;

-- WHERE clause is similar to if statements where we ask a question
-- of our data 

-- same thing but with <

SELECT customer_id, amount 
FROM payment 
WHERE  amount >= .99;

-- same thing but with <=

SELECT customer_id, amount 
FROM payment
WHERE amount <= .99;

-- same thing but with <> (aka not equal)

SELECT customer_id, amount 
FROM payment 
WHERE amount <> 0.00;

-- ORDER BY clause does just that. It organizes the data either by ASC or DESC 

SELECT customer_id, amount 
FROM payment 
WHERE amount <> 0.00
ORDER BY amount DESC
-- limit 1;

-- SQL aggragates (AKA ruuning calculations on your data )
-- SUM(), AVG(), COUNT(), MIN(), MAX()
-- BETWEEN something AND something_else

-- Query for SUM()
SELECT SUM(amount)
FROM payment 
WHERE amount > 5.99;

-- Query for AVG()
SELECT AVG(amount)
FROM payment;

-- QUERY for COUNT()
SELECT COUNT(amount)
FROM payment 
WHERE amount > 5.99;

-- Quary for MAX()
SELECT MAX(amount)
FROM payment 
WHERE amount < 6.50;

-- Query for MIN()
SELECT MIN(amount)
FROM payment
WHERE amount >3.99;

-- Query to display the sum of transactions separated bt their amount 
SELECT SUM(amount), amount
FROM payment
GROUP BY amount
Order BY amount;

-- QUery to display how many rentals per customer, Using the COUNT()
SELECT COUNT(amount), customer_id
FROM payment
GROUP BY customer_id
ORDER BY COUNT (amount)DESC
LIMIT 10;



-- HOMEWORK IS HERE 
--1
SELECT last_name
FROM actor
WHERE last_name = 'Wahlberg';
--2
SELECT amount 
FROM payment 
WHERE amount BETWEEN 3.99 AND 5.99;
--3
SELECT COUNT (film_id), film_id
FROM inventory
GROUP BY film_id
ORDER BY COUNT (film_id) DESC;
--4
SELECT COUNT(last_name)
FROM customer
WHERE last_name = 'William';
--5
SELECT COUNT(staff_id), staff_id
FROM rental
GROUP BY staff_id;
--6
SELECT COUNT(DISTINCT(district))
FROM address;
--7
SELECT COUNT(film_id), film_id
FROM film_actor
GROUP BY film_id
ORDER BY COUNT(film_id)DESC;
--8
SELECT COUNT (customer_id)
FROM customer
WHERE store_id = 1 AND last_name LIKE '%es';
--9
SELECT COUNT(amount)
FROM payment
WHERE customer_id BETWEEN 380 and 430
GROUP BY amount
HAVING COUNT(amount) > 250;
--10
SELECT COUNT(rating), rating
FROM film
GROUP BY rating 
ORDER BY COUNT(rating)DESC;




