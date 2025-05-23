CREATE TABLE animal
(
id INT PRIMARY KEY,
fecha_nacimiento DATE,
lugar_nacimiento VARCHAR (30),
raza VARCHAR (30),
propietario_id INT,
estado VARCHAR (30),
comprador_id INT,
fecha_compra DATE,
fecha_venta DATE,
nombre VARCHAR (30)
);

CREATE TABLE feria
(
cod_feria INT PRIMARY KEY NOT NULL,
fecha_feria DATE,
animales_vendidos INT,
id_propietario INT,
FOREIGN KEY (id_propietario) REFERENCES propietario (id_propietario)  
);

CREATE TABLE propietario
(
id_propietario INT PRIMARY KEY NOT NULL,
id_animal INT,
FOREIGN KEY (id_animal) REFERENCES animal (id)
);

CREATE TABLE comprador
(
  id_comprador INT PRIMARY KEY,
  nombre_comprador VARCHAR(30),
  apellido_comprador VARCHAR (30),
  id_animal_vendido INT
);

CREATE TABLE publicidad
(
 id_publicidad INT PRIMARY KEY,
 id_propietario INT,
 peso_animal FLOAT,
 color VARCHAR (10),
 id_animal INT,
 FOREIGN KEY (id_propietario) REFERENCES propietario (id_propietario),
 FOREIGN KEY (id_animal) REFERENCES animal (id)
);

CREATE TABLE criador
(
id_criador INT PRIMARY KEY,
id_animal INT,
FOREIGN KEY (id_animal) REFERENCES animal (id)
);