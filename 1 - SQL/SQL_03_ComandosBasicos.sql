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