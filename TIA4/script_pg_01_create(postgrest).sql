CREATE TABLE tipo_proyecto (
  id_tipo_proyecto SERIAL,
  nombre1 VARCHAR (20)
)

CREATE TABLE proyecto(
  id_proyecto SERIAL,
  nombre VARCHAR(20),
  fecha_inicio DATE,
  id_tipo_proyecto INT
)

CREATE TABLE usuario(
  id_usuario INT,
  nombre1_usuario VARCHAR(20),
  apellido1_usuario VARCHAR(20),
  apellido2_usuario VARCHAR(20),
  id_rol INT
)

CREATE TABLE rol(
  id_usuario INT,
  nombre_rol VARCHAR(20),
  id_rol INT
)

CREATE TABLE permiso(
  id_permiso INT,
  id_rol INT,
  tipo_permiso
)

CREATE TABLE estudiantes(
  id_usuario INT,
  id_programa INT,
  id_asignatura INT,
  fecha_ingreso DATE,
  edad INT,
  codigo_grupo VARCHAR(20)
)

CREATE TABLE docente (
  id_docente INT,
  id_asignatura INT,
  nombre_docente VARCHAR(20),
  edad INT,
  apellido_docente VARCHAR (20)
)

CREATE TABLE programa(
  id_programa INT,
  nombre_programa VARCHAR (20),
  id_usuario INT,
  facultad VARCHAR (20)
)

CREATE TABLE asignatura(
  id_usuario INT,
  id_asignatura INT,
  nombre_asignatura VARCHAR(20),
  id_docente INT
)

CREATE TABLE entregable(
  id_proyecto INT,
  id_entregable INT,
  nombre_entregable VARCHAR(20)
)

CREATE TABLE tipo_entregable(
  id_tipo_entregable INT,
  id_entregable INT,
  id_proyecto INT,
  nombre_tipo VARCHAR(20)
)

CREATE TABLE ira(
  id_proyecto INT,
  id_usuario INT,
  indice INT,
  id_asignatura,
  id_docente,
  id_ira
)

CREATE TABLE evaluacion(
  id_evaluacion INT,
  id_evaluador INT,
  nota_evaluacion
)

CREATE TABLE rep(
  id_rep INT,
  resultado VARCHAR(200)
)

CREATE TABLE material(
  id_proyecto INT,
  id_material INT,
  material VARCHAR(200)
)

CREATE TABLE era(
  id_proyecto INT,
  id_usuario INT,
  evaluacion VARCHAR (20),
  id_asignatura INT,
  id_docente INT,
  id_era INT
)

CREATE TABLE programa_asignatura(
  id_programa INT,
  id_asignatura
)

CREATE TABLE usuario_rol(
  id_usuario INT,
  id_rol INT
)

CREATE TABLE rol_permiso(
  id_permiso INT,
  id_rol INT
)

CREATE TABLE estudiante_proyecto(
  id_estudiante INT,
  id_proyecto,
)

CREATE TABLE docente_proyecto(
  id_docente INT,
  id_proyecto INT,
)

CREATE TABLE proyecto_asignatura(
  id_proyecto INT,
  id_asignatura INT
)

CREATE TABLE proyecto_era (
  id_proyecto INT,
  id_era INT
)

CREATE TABLE proyecto_ira(
  id_proyecto INT,
  id_ira INT
)

CREATE TABLE
