SELECT * FROM animal;

--animales disponibles
SELECT id, estado, nombre FROM animal
WHERE estado = 'Disponible';

--ordenar por nombre en orden alfabetico
SELECT * FROM animal
ORDER BY nombre ASC;

--obtener al animal mas viejo
SELECT * FROM animal
WHERE fecha_nacimiento = (SELECT MIN(fecha_nacimiento) FROM animal);

--obtener la suma total de los animales vendidos en las ferias
SELECT SUM(animales_vendidos) AS total_animales_vendidos
FROM feria;

--calcular el peso promedio de los animales publicitados
SELECT AVG(peso_animal) AS peso_promedio
FROM publicidad;

--contar cuantos animales tiene cada propietario
SELECT id_propietario, COUNT(id_animal) AS cantidad_animales
FROM propietario
GROUP BY id_propietario
ORDER BY cantidad_animales DESC;

--Listar los nombres de animales que han sido vendidos (donde comprador_id no es NULL), 
--ordenados alfabéticamente
SELECT nombre
FROM animal
WHERE comprador_id IS NOT NULL
ORDER BY nombre ASC;
