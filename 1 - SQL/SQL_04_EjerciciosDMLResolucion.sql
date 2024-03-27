-- Tabla: sakila.actor
-- Pregunta: Actores que se llamen 'Scarlett'
SELECT * FROM sakila.actor 
where first_name = 'Scarlett' 

-- Tabla: sakila.actor
-- Pregunta: Actores que se apelliden 'Johansson'
SELECT * FROM sakila.actor 
where last_name = 'Johansson' 

-- Tabla: sakila.actor
-- Pregunta: ¿Cuántos apellidos de actor (last_name) diferentes hay?
SELECT DISTINCT last_name FROM sakila.actor ;

SELECT COUNT(DISTINCT last_name) FROM sakila.actor ;

-- Tabla: sakila.film
-- Pregunta: Número de películas por año
select release_year, count(film_id) from sakila.film group by release_year;

-- Tabla: sakila.film
-- Pregunta: Duración máxima y mínima de las peliculas registradas
select max(length) from sakila.film;
-- Bonus: Combinadas
select max(length), min(length) from sakila.film;
-- Bonus: con group by
select rating, max(length), min(length) from sakila.film group by rating;

-- Tabla: sakila.film
-- Pregunta: Películas ordenadas por duración descendente
select film_id, title, description, length from sakila.film order by length DESC;

-- Tabla: sakila.film
-- Pregunta: Películas con duración entre 80 y 120 minutos
SELECT film_id, title, description, length from sakila.film
WHERE length >= 80 AND length <= 120
ORDER BY length ASC;

SELECT film_id, title, description, length from sakila.film
WHERE length BETWEEN 80 AND 120
ORDER BY length ASC;

-- Tabla: sakila.actor
-- Pregunta: Actores que tengan una x en el nombre o en el apellido
select * from sakila.actor
WHERE first_name LIKE '%x%' OR last_name LIKE '%x%';

select * from sakila.actor
WHERE first_name LIKE '%r%' OR last_name LIKE '%r%';

-- Tabla: sakila.address
-- Pregunta: Direcciones de california que tengan ‘274’ en el número de teléfono
SELECT * from sakila.address
WHERE district = 'California' AND phone LIKE '274%';

-- Tabla: sakila.film
-- Pregunta: Películas ‘Épicas’ (Epic) o ‘Brillantes’ (brilliant) que duren más de 180 minutos
SELECT film_id, title, description, length from sakila.film
WHERE (description LIKE '%epic%' OR description LIKE '%brilliant%') AND length > 180;

-- Tabla: sakila.film
-- Pregunta: Películas que duren entre 100 y 120 minutos o entre 50 y 70 minutos
SELECT * from sakila.film
where (length BETWEEN 100 and 120) OR (length BETWEEN 50 and 70)
order by length;


-- Tabla: sakila.film
-- Pregunta: Películas que cuesten 0.99, 2.99 y tengan un rating ‘g’ o ‘r’ y que hablen de cocodrilos (cocodrile)
SELECT * from sakila.film
WHERE (rental_rate IN( 0.99, 2.99)) AND (rating IN ('G', 'R')) AND (description LIKE '%crocodile%');

-- Tabla: sakila.address
-- Pregunta: Direcciones de ontario o de punjab o que su código postal acabe en 5 o que su teléfono acabe en 5
SELECT * from sakila.address
WHERE (district IN ('Ontario', 'Punjab')) OR (postal_code LIKE '%5') OR (phone LIKE '%5');

-- Tabla: sakila.film
-- Pregunta: Si la duración de la pelicula está entre 80 y 120, clasificar como 'Larga duración', entre 60 y 80 como 'Estandar y en caso contrario 'Otros'
SELECT
film_id,
title,
description,
length,
CASE
	WHEN length BETWEEN 80 AND 120 THEN 'Larga'
    WHEN length BETWEEN 60 AND 80 THEN 'Estandar'
    ELSE 'Corta'
end AS 'Duracion'
from sakila.film;

 

 

 

