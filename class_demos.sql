-- 1. What is the average cost to rent a film in the Sakila stores?
SELECT * FROM film;


SELECT AVG(rental_rate)AS avg_rent_rate
FROM film;

-- 2. What is the average rental cost of films by rating? On average, what is the cheapest rating of films to rent? Most expensive?
SELECT AVG(rental_rate)AS avg_rental_rate, rating, 
MAX(rental_rate) AS maximum_rating , MIN(rental_rate) AS minimum_rating
FROM film
GROUP BY rating;

-- 3. How much would it cost to replace all the films in the database?
SELECT SUM(replacement_cost) AS total_replacement_cost
FROM film;

-- 4. How much would it cost to replace all the films in each ratings category?
SELECT SUM(replacement_cost) AS total_replacement_cost, rating
FROM film
GROUP BY rating;

-- 5. How long is the longest movie in the database? The shortest?
SELECT MAX(length) AS longest_movie, MIN(length) AS shortest_movie
FROM film;

SELECT title, length
FROM film
WHERE length in (SELECT max(length) FROM film)
	or length in (SELECT min(length) FROM film) 
ORDER BY length desc
;
	




SELECT COUNT (*) FROM store

SELECT * FROM STORE

SELECT *
FROM actor
LIMIT 100;

SELECT first_name, 
MAX(last_update)
FROM actor
WHERE first_name = 'GOLDIE'
GROUP BY first_name
HAVING MAX(last_update) < '2017-02-16'
LIMIT 5;

SELECT * FROM film;

--SELECT every movie and look at average film length per rating type
SELECT rating
	, ROUND(AVG(length),2) avg_movie_length
	, MIN(length) as shortest_movie
	, MAX(length) as longest_movie
FROM film
GROUP BY rating
ORDER BY avg_movie_length;

SELECT AVG(title)
FROM film;

-- 1. Retreive the latest rental for each customer's first and last name and email address. 
SELECT DISTINCT ON (cu.customer_id) r.rental_date, r.customer_id, cu.first_name, cu.last_name, cu.email
FROM rental r
	JOIN customer cu USING (customer_id)
ORDER BY cu.customer_id, r.rental_date DESC
LIMIT 5;