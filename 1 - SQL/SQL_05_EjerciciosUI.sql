/*
Has sido contratado para diseñar la base de datos de una pequeña librería. 
La librería necesita almacenar información sobre sus libros y clientes:
- Cada libro tiene un identificador único, título, autor, año de publicación y género. 
- Cada cliente tiene un identificador único, nombre, dirección y número de teléfono.

1. Crea un esquema de base de datos llamado Libreria.

2. Dentro del esquema Libreria, crea dos tablas: Libros y Clientes

a. La tabla Libros debe contener las siguientes columnas:
	- id (identificador único del libro, tipo de dato entero).
	- titulo (título del libro, tipo de dato cadena de caracteres). (No debe ser nulo)
	- autor (nombre del autor del libro, tipo de dato cadena de caracteres). (No debe ser nulo)
	- fecha_publicacion (fecha publicación del libro, tipo de dato fecha).
	- genero (género del libro, tipo de dato cadena de caracteres).
	- edad_recomendada (edad mínima recomendada para la lectura del libro, tipo entero)
	
b. La tabla Clientes debe contener las siguientes columnas:
	- id (identificador único del cliente, tipo de dato entero).
	- nombre (nombre del cliente, tipo de dato cadena de caracteres). (No debe ser nulo)
	- direccion (dirección del cliente, tipo de dato cadena de caracteres).
	- telefono (número de teléfono del cliente, tipo de dato cadena de caracteres). (No debe ser nulo)

Asegúrate de que los campos de identificador (id) en ambas tablas sean claves primarias y se autoincrementen para garantizar la unicidad y la facilidad de inserción de datos.

PRUEBA A INSERTAR ALGUNOS DATOS DE PRUEBA
*/