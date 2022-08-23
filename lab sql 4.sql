use sakila;

-- Question 1: Get film ratings.

SELECT distinct rating 
FROM film;

-- Question 2: Get release years.

SELECT film_id, release_year
FROM film;

-- Question 3: Get all films with ARMAGEDDON in the title.

SELECT film_id, title
FROM film
WHERE title regexp("armageddon");

-- Question 4: Get all films with APOLLO in the title.

SELECT film_id, title
FROM film
WHERE title regexp("apollo");

-- Question 5: Get all films which title ends with APOLLO.

SELECT film_id, title
FROM film
WHERE title regexp("apollo$");

-- Question 6: Get all films which title ends with DATE.

SELECT film_id, title
FROM film
WHERE title regexp("date");

-- Question 7: Get 10 films with the longest title.

SELECT film_id, title, length(title) as length
FROM film
ORDER BY length DESC
LIMIT 10;

-- Question 8: Get 10 the longest films.

SELECT film_id, title, length
FROM film
ORDER BY length DESC
LIMIT 10;

-- Question 9: How many films include Behind the Scenes content?

SELECT * 
FROM film
WHERE special_features regexp("Behind the scenes");

-- Question 10: List films ordered by release year and title in alphabetical order.

SELECT * 
FROM film
ORDER BY length DESC, title;

