-- Creación de BBDD
CREATE DATABASE prueba;

-- Creación de una tabla de BBDD
--  Una bbdd de un zoo. Crear una tabla de animales.alter
CREATE TABLE prueba.animales (
	idanimales INT,
    nombre VARCHAR(50),
    edad int,
    raza VARCHAR(100),
    color VARCHAR(20),
    fecha_adopcion DATE
);

-- INSERTAMOS ANIMALES
INSERT INTO prueba.animales 
(idanimales, nombre, edad, raza, color, fecha_adopcion)
VALUES
(1, 'Copito', 7, 'Gorila', 'Blanco', '2024-01-01');

INSERT INTO prueba.animales 
(idanimales, nombre, edad, raza, color, fecha_adopcion)
VALUES
(2, 'Lana', 4, 'Oveja', 'Blanco', '2024-01-01');

-- Compruebo que he insertado valores
select * from prueba.animales;

-- Animal erroneo
INSERT INTO prueba.animales 
(idanimales)
VALUES
(2);

-- TRUNCATE: borra los registros de una tabla
TRUNCATE TABLE prueba.animales;

-- RESTRICCIONES:
-- NOT NULL: controla que no se inserten registros vacios en la columna indicada

CREATE TABLE prueba.animales2 (
	idanimales INT NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    edad int,
    raza VARCHAR(100) NOT NULL,
    color VARCHAR(20),
    fecha_adopcion DATE NOT NULL
);

-- Animal erroneo
INSERT INTO prueba.animales2
(idanimales)
VALUES
(2);

-- UNIQUE: no se pueden repetir valores posibles en esa columna
CREATE TABLE prueba.animales3 (
	idanimales INT NOT NULL unique,
    nombre VARCHAR(50) NOT NULL unique,
    edad int,
    raza VARCHAR(100) NOT NULL,
    color VARCHAR(20),
    fecha_adopcion DATE NOT NULL
);

-- INSERTAMOS ANIMALES
INSERT INTO prueba.animales3
(idanimales, nombre, edad, raza, color, fecha_adopcion)
VALUES
(1, 'Copito', 7, 'Gorila', 'Blanco', '2024-01-01');

INSERT INTO prueba.animales3
(idanimales, nombre, edad, raza, color, fecha_adopcion)
VALUES
(2, 'Lana', 4, 'Oveja', 'Blanco', '2024-01-01');

INSERT INTO prueba.animales3
(idanimales, nombre, edad, raza, color, fecha_adopcion)
VALUES
(3, 'Lanitas', 4, 'Cabra', 'Blanca', '2024-01-01');

select * from prueba.animales3;



