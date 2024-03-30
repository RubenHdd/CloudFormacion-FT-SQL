-- PRIMARY KEY: clave de referencia de la tabla. Se usará para uniones con otras tablas de BBDD
-- Una PRIMARY KEY, debe ser UNICA y NO NULA, por lo que no es necesario añadir esas restricciones
-- si estamos añadiendo la PRIMARY KEY
CREATE TABLE prueba.animales4 (
	idanimales INT NOT NULL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL unique,
    edad int,
    raza VARCHAR(100) NOT NULL,
    color VARCHAR(20),
    fecha_adopcion DATE NOT NULL
);

-- INSERTAMOS ANIMALES
INSERT INTO prueba.animales4
(idanimales, nombre, edad, raza, color, fecha_adopcion)
VALUES
(1, 'Copito', 7, 'Gorila', 'Blanco', '2024-01-01');

INSERT INTO prueba.animales4
(idanimales, nombre, edad, raza, color, fecha_adopcion)
VALUES
(2, 'Lana', 4, 'Oveja', 'Blanco', '2024-01-01');

-- PISTA: Este registro tiene el mismo ID que el anterior, no se insertará correctamente
INSERT INTO prueba.animales4
(idanimales, nombre, edad, raza, color, fecha_adopcion)
VALUES
(2, 'Lanitas', 4, 'Cabra', 'Blanca', '2024-01-01');


-- CHECK: antes de insertar un registro, se comprueba la condición indicada a la hora de crear
-- el campo en la tabla. Si se cumple dicha condición, se inserta la fila nueva

CREATE TABLE prueba.animales5 (
	idanimales INT NOT NULL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL unique,
    edad int,
    raza VARCHAR(100) NOT NULL,
    color VARCHAR(20),
    fecha_adopcion DATE NOT NULL,
	CHECK (edad>=3)
);

-- INSERTAMOS ANIMALES
INSERT INTO prueba.animales5
(idanimales, nombre, edad, raza, color, fecha_adopcion)
VALUES
(1, 'Copito', 7, 'Gorila', 'Blanco', '2024-01-01');

INSERT INTO prueba.animales5
(idanimales, nombre, edad, raza, color, fecha_adopcion)
VALUES
(2, 'Lana', 4, 'Oveja', 'Blanco', '2024-01-01');

INSERT INTO prueba.animales5
(idanimales, nombre, edad, raza, color, fecha_adopcion)
VALUES
(3, 'Lanitas', 4, 'Cabra', 'Blanca', '2024-01-01');

-- PISTA: Este registro tiene una edad menor que 3 años, no se insertará correctamente
INSERT INTO prueba.animales5
(idanimales, nombre, edad, raza, color, fecha_adopcion)
VALUES
(4, 'Perry', 2, 'Ornitorrinco', 'Verde', '2024-01-01');



-- TRUNCATE: Podemos eliminar TODAS las filas de una tabla
-- Lo bueno de tener las inserciones en formato código, es que podemos restaurar la tabla rápidamente
TRUNCATE TABLE prueba.animales5;
SELECT * FROM prueba.animales5;


-- AUTO_INCREMENT: se genera automáticamente un identificador numérico que se incrementa solo 
-- cuando se añade una nueva fila a la tabla. Por tanto no es necesario indicar el siguiente número
-- cuando añadimos una nueva fila

CREATE TABLE prueba.animales6 (
	idanimales INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL unique,
    edad int,
    raza VARCHAR(100) NOT NULL,
    color VARCHAR(20),
    fecha_adopcion DATE NOT NULL,
	CHECK (edad>=3)
);

-- INSERTAMOS ANIMALES
INSERT INTO prueba.animales6
(idanimales, nombre, edad, raza, color, fecha_adopcion)
VALUES
(1, 'Copito', 7, 'Gorila', 'Blanco', '2024-01-01');

INSERT INTO prueba.animales6
(idanimales, nombre, edad, raza, color, fecha_adopcion)
VALUES
(2, 'Lana', 4, 'Oveja', 'Blanco', '2024-01-01');

INSERT INTO prueba.animales6
(idanimales, nombre, edad, raza, color, fecha_adopcion)
VALUES
(3, 'Lanitas', 4, 'Cabra', 'Blanca', '2024-01-01');

INSERT INTO prueba.animales6
(idanimales, nombre, edad, raza, color, fecha_adopcion)
VALUES
(4, 'Perry', 3, 'Ornitorrinco', 'Verde', '2024-01-01');


-- DROP TABLE: Elimina completamente una tabla de la base de datos.
-- Esta eliminación incluye: todos los datos de la tabla y la propia estructura de tabla 
DROP TABLE prueba.animales6;

-- DROP DATABASE: Elimina completamente una base de datos.
-- Esta eliminación incluye: todas las tablas de la base de datos y todos los datos que contengan
DROP TABLE prueba.animales6;