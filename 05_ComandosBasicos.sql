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

/*
LIKE: se utiliza en la instrucción WHERE para buscar en un patrón variable
- %cadena%: busca un patron al principio, al final, o a mitad de un texto
- %cadena: busca un patron que comience por la cadena indicada
- cadena%: busca un patrón que termine por la cadena indicada 
*/
SELECT * FROM sakila.customer where first_name LIKE '%SAM%';
SELECT * FROM sakila.customer where first_name LIKE 'SA%';
SELECT * FROM sakila.customer where first_name LIKE '%SA';

/*
NOT: permite añadirse a una sentencia para indicar negación
*/
SELECT * FROM sakila.city where NOT city = "Santiago de Compostela";
SELECT * FROM sakila.city where NOT country_id = 87;
SELECT * FROM sakila.customer where NOT first_name LIKE '%SAM%';

/*
AND/OR: instrucciones que permiten añadir clausulas a las condiciones
*/
SELECT * FROM sakila.city WHERE city LIKE 'S%';
SELECT * FROM sakila.city WHERE country_id = 87;

SELECT * FROM sakila.city WHERE city LIKE 'S%' and country_id = 87;
SELECT * FROM sakila.city WHERE city LIKE 'S%' OR country_id = 87;

/*
LIMIT: limitar la cantidad de registros mostrados
*/
select * from sakila.city limit 10;
SELECT * FROM sakila.city WHERE city LIKE 'S%' OR country_id = 87 limit 100;

/*
MIN/MAX: obtiene los números máximos y mínimos almacenados en una tabla
*/
SELECT * FROM sakila.payment;

SELECT MAX(amount) FROM sakila.payment;
SELECT MIN(amount) FROM sakila.payment;

SELECT MAX(amount), customer_id FROM sakila.payment;

/*
COUNT: cuenta los registros de una tabla
*/
SELECT COUNT(*) from sakila.payment;
SELECT COUNT(*) from sakila.payment where customer_id = 2;

/*
AVG: realiza el promedio de los registros de una tabla
*/
SELECT AVG(amount) from sakila.payment;
SELECT AVG(amount) from sakila.payment where customer_id = 2;

/*
SUM: realiza el promedio de los registros de una tabla
*/
SELECT SUM(amount) from sakila.payment;
SELECT SUM(amount) from sakila.payment where customer_id = 2;