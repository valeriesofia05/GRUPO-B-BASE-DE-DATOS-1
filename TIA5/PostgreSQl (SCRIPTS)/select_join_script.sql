--Listado de los animales y los eventos (ferias) en los que ha participado su propietario
SELECT a.id AS id_animal, a.nombre, f.cod_feria, f.fecha_feria
FROM animal a
JOIN propietario p ON a.propietario_id = p.id_propietario
JOIN feria f ON f.id_propietario = p.id_propietario
ORDER BY a.id;

--Listar los animales junto con el nombre del comprador si fueron vendidos
SELECT a.id AS id_animal, a.nombre AS nombre_animal, c.nombre_comprador, c.apellido_comprador
FROM animal a
INNER JOIN comprador c ON a.id = c.id_animal_vendido;

--Listar todos los animales, incluyendo si fueron vendidos o no (con datos del comprador si existen)
SELECT a.id AS id_animal, a.nombre AS nombre_animal, c.nombre_comprador, c.apellido_comprador
FROM animal a
LEFT JOIN comprador c ON a.id = c.id_animal_vendido;

--Listar todos los compradores, mostrando los datos del animal comprado si existen
SELECT c.id_comprador, c.nombre_comprador, c.apellido_comprador, a.nombre AS nombre_animal
FROM animal a
RIGHT JOIN comprador c ON a.id = c.id_animal_vendido;
