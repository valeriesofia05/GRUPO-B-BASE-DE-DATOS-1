INSERT INTO animal (id, fecha_nacimiento, lugar_nacimiento, raza, propietario_id, estado, comprador_id, fecha_compra, fecha_venta, nombre) VALUES
(1, '2020-05-10', 'Granada', 'Holstein', 1, 'Disponible', 1, '2022-01-15', '2023-06-20', 'Luna'),
(2, '2021-07-21', 'Córdoba', 'Angus', 2, 'Vendido', 2, '2022-03-10', '2023-04-15', 'Toro'),
(3, '2019-03-30', 'Sevilla', 'Charolais', 3, 'Disponible', NULL, '2020-11-05', NULL, 'Nube');

INSERT INTO propietario (id_propietario, id_animal) VALUES
(1, 1),
(2, 2),
(3, 3);

INSERT INTO comprador (id_comprador, nombre_comprador, apellido_comprador, id_animal_vendido) VALUES
(1, 'Carlos', 'Sánchez', 1),
(2, 'Ana', 'López', 2);

INSERT INTO feria (cod_feria, fecha_feria, animales_vendidos, id_propietario) VALUES
(1, '2023-07-10', 5, 1),
(2, '2023-08-05', 3, 2);

INSERT INTO publicidad (id_publicidad, id_propietario, peso_animal, color, id_animal) VALUES
(1, 1, 450.5, 'Blanco', 1),
(2, 2, 620.0, 'Negro', 2),
(3, 3, 580.3, 'Beige', 3);

INSERT INTO criador (id_criador, id_animal) VALUES
(1, 1),
(2, 2),
(3, 3);


