/* 
SELECT: usamos SELECT para mostrar información de la base de datos  
Seleccionamos todos los elementos de la tabla con *
Podemos seleccionar campos específicos escribiéndolos uno por uno separando por comas
*/
SELECT * FROM sakila.actor;

SELECT actor_id, first_name from sakila.actor;

/* 
DISTINCT: devuelve los valores distintos/diferentes de una columna elegida
*/
SELECT * from sakila.payment;

SELECT DISTINCT staff_id from sakila.payment;

/* 
WHERE: permite limitar/filtrar los datos que vamos a mostrar en base a una condición
*/
SELECT * FROM sakila.city where country_id = 87;

SELECT * FROM sakila.city where city = "Santiago de Compostela";

/*
ORDER BY: ordena los resultados en función de un campo
*/

SELECT * FROM sakila.city ORDER BY country_id;
SELECT * FROM sakila.city ORDER BY country_id ASC;
SELECT * FROM sakila.city ORDER BY country_id  DESC;

/*
Podemos combinar varias instrucciones SQL
*/
SELECT * FROM sakila.city WHERE country_id = 87 ORDER BY city_id  ASC;
SELECT * FROM sakila.city WHERE country_id = 87 ORDER BY city_id  DESC;

SELECT * FROM sakila.city WHERE country_id = 87 ORDER BY City  ASC;
SELECT * FROM sakila.city WHERE country_id = 87 ORDER BY City  DESC;