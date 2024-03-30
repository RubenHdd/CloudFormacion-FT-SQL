-- Ejercicio 1: Tabla de Empleados de una Librería
-- Esta tabla almacenará información sobre los empleados de una librería.
-- Cada empleado tendrá:
-- 		identificador único
--		nombre_empresa
--		apellido 
--		cargo
--		salario
--		fecha de contratación
-- Además, asegúrate de incluir las siguientes restricciones:
-- 		El salario no puede ser negativo.
-- 		Todos los campos excepto el salario deben ser obligatorios (no nulos).
--		El ID deberá rellenarse automáticamente
CREATE TABLE Empleados (
    id_empleado INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    cargo VARCHAR(50) NOT NULL,
    salario DECIMAL(10, 2),
    fecha_contratacion DATE,
    CHECK (salario >= 0) -- Restricción para asegurar que el salario sea no negativo
);



-- Ejercicio 2: Tabla de Proveedores de una Librería
-- Esta tabla registrará información sobre los proveedores que suministran productos a la librería.
-- Cada proveedor tendrá: 
-- 		identificador único
--		nombre de la empresa
--		persona de contacto
--		número de teléfono
--		correo electrónico
-- Además, asegúrate de incluir las siguientes restricciones:
-- 		El correo electrónico debe seguir un formato válido.
--		El nombre de la empresa debe ser obligatorio (no nulo).
--		El ID deberá rellenarse automáticamente


CREATE TABLE Proveedores (
    id_proveedor INT PRIMARY KEY AUTO_INCREMENT,
    nombre_empresa VARCHAR(100) NOT NULL,
    contacto VARCHAR(50),
    telefono VARCHAR(15),
    email VARCHAR(100),
    CHECK (email LIKE '%_@__%.__%') -- Restricción para asegurar que el email tenga un formato válido
);

-- Ejercicio 3: Añade una nueva columna a la tabla de libros existente.
-- PISTA: Puedes usar la interfaz visual.
-- Añade las columnas precio y stock a dicha tabla.

-- BONUS: ¿Cómo haría si quisiese añadir una restricción para que precio y stock fuesen mayor o igual a 0?
-- Opcion 1:
ALTER TABLE libreria.libros
ADD COLUMN precio DECIMAL(10, 2) NOT NULL CHECK (precio >= 0),
ADD COLUMN stock INT NOT NULL CHECK (stock >= 0) ;

-- Opcion 2:
DROP TABLE libreria.libros;

CREATE TABLE libreria.libros (
  `idLibros` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(200) NOT NULL,
  `autor` varchar(60) NOT NULL,
  `fecha_publicacion` date DEFAULT NULL,
  `genero` varchar(45) DEFAULT NULL,
  `edad_recomendada` int DEFAULT NULL,
  stock INT NOT NULL,
  precio DECIMAL(10, 2) NOT NULL,
  PRIMARY KEY (`idLibros`),
  CHECK (precio >= 0),
  CHECK (stock >= 0)
) ;
