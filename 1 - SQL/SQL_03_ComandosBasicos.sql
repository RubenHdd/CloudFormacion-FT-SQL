-- IN: limitamos los valores filtrados en el WHERE para adecuarlo a un listado de valores
SELECT * FROM sakila.payment where customer_id IN (1,7,9);

SELECT * FROM sakila.actor 
where first_name IN ('JENNIFER', 'JULIA');

-- BETWEEN: encuentra resultados comprendidos entre dos valores, un valor mínimo y uno máximo
SELECT * from sakila.payment where customer_id BETWEEN 3 AND 5;

SELECT * from sakila.payment where amount BETWEEN 6 AND 10;

-- Alias de columna: renombrar una columna especifica
select * from sakila.actor;

Select
actor_id,
first_name as 'Nombre',
last_name as 'Apellido'
from sakila.actor;

-- CONCAT: encadena valores de columna
Select CONCAT(first_name, last_name) FROM sakila.actor;
Select CONCAT( first_name,' ', last_name) FROM sakila.actor;
Select CONCAT('Nombre: ', first_name,', Apellidos: ', last_name) FROM sakila.actor;
Select CONCAT('Nombre: ', first_name,', Apellidos: ', last_name) as 'Nombre Completo' FROM sakila.actor;

-- GROUP BY: agrupa filas que tienen mismos valores
SELECT * FROM sakila.payment;
SELECT * from sakila.payment GROUP BY staff_id;

SELECT  staff_id, sum(amount) from sakila.payment GROUP BY staff_id;
SELECT  staff_id, count(*) from sakila.payment GROUP BY staff_id;
SELECT  staff_id, count(*) as Pagos, sum(amount) as Ventas from sakila.payment GROUP BY staff_id;
SELECT  staff_id, count(*) as Pagos, sum(amount) as Ventas from sakila.payment where staff_id = 1 GROUP BY staff_id;


-- CASE: nos permite crear una nueva columna en base a condiciones
SELECT * FROM sakila.payment;

SELECT 
	payment_id,
    amount,
    case 
		when amount < 5 then 'Producto estándar'
        else 'Producto premium'
	end as "TipoProducto"
from sakila.payment;
        