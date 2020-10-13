/*Instructions
Get film ratings.
Get release years.
Get all films with ARMAGEDDON in the title.
Get all films with APOLLO in the title
Get all films which title ends with APOLLO.
Get all films with word DATE in the title.
Get 10 films with the longest title.
Get 10 the longest films.
How many films include Behind the Scenes content?
List films ordered by release year and title in alphabetical order.*/

USE sakila;

-- 1) Get film ratings.
SELECT distinct rating FROM film;

-- 2) Get release years.
SELECT distinct release_year FROM film;

-- 3) Get all films with ARMAGEDDON in the title.
SELECT title FROM film
WHERE title like '%ARMAGEDDON' OR title like 'ARMAGEDDON%';

-- 4) Get all films with APOLLO in the title
SELECT title FROM film
WHERE title like '%APOLLO' OR title like 'APOLLO%';

-- 5) Get all films which title ends with APOLLO
SELECT title FROM film    -- with like
WHERE title like '%APOLLO';
SELECT title FROM film    -- with regexp
WHERE title regexp 'APOLLO$';

-- 6) Get all films with word DATE in the title.
SELECT title FROM film
WHERE title like '% DATE' OR title like 'DATE%';

-- 7) Get 10 films with the longest title.
SELECT title FROM film
ORDER BY length(title) DESC
LIMIT 10;

-- 8) Get 10 the longest films.
SELECT title, length FROM film
ORDER BY length DESC
LIMIT 10;

-- 9) How many films include Behind the Scenes content?
SELECT count(film_id) FROM film
WHERE special_features like '%Behind the Scenes' OR special_features like 'Behind the Scenes%';

-- 10) List films ordered by release year and title in alphabetical order.
SELECT title, release_year FROM film
ORDER BY release_year, title;