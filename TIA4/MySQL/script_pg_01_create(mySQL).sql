CREATE TABLE tipo_proyecto (
    id_tipo_proyecto INT,
    nombre VARCHAR(50) 
);

CREATE TABLE proyecto (
    id_proyecto INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    fecha_inicio DATE,
    id_tipo_proyecto INT
);

CREATE TABLE usuario (
    id_usuario INT,
    nombre_usuario VARCHAR(50),
    apellido1_usuario VARCHAR(50),
    apellido2_usuario VARCHAR(50),
    rol VARCHAR(50),
    permiso VARCHAR (50)
);

CREATE TABLE programa (
    id_programa INT,
    nombre_programa VARCHAR(16),
    id_usuario INT,
    facultad VARCHAR(16)
);
CREATE TABLE docente (
    id_docente INT,
    id_asignatura INT,
    nombre_docente VARCHAR(16),
    apellido_docente VARCHAR(16)
);
CREATE TABLE asignatura (
    id_usuario INT,
    id_asignatura INT,
    nombre_asignatura VARCHAR(16),
    id_docente INT
);

CREATE TABLE programa_asignatura (
    id_programa INT,
    id_asignatura INT
);

CREATE TABLE rol (
    id_rol INT AUTO_INCREMENT PRIMARY KEY,
    nombre_rol VARCHAR(50),
    id_usuario INT
);

CREATE TABLE permiso (
    id_permiso INT AUTO_INCREMENT PRIMARY KEY,
    id_rol INT,
    tipo_permiso VARCHAR(16)
);

CREATE TABLE estudiante (
    id_usuario INT,
    id_programa INT,
    id_asignatura INT,
    fecha_ingreso DATE,
    codigo_grupo VARCHAR(16)
);

CREATE TABLE entregable (
    id_proyecto INT,
    id_entregable INT,
    nombre_entregable VARCHAR(16) 
);

CREATE TABLE tipo_entregable (
    id_tipo_entregable INT,
    id_entregable INT,
    id_proyecto INT,
    nombre_tipo VARCHAR(16)
);

CREATE TABLE ira (
    id_proyecto INT,
    id_usuario INT,
    indice INT,
    id_asignatura INT,
    id_docente INT,
    id_ira INT
);

CREATE TABLE usuario_rol (
    id_usuario INT,
    id_rol INT
);

CREATE TABLE rol_permiso (
    id_permiso INT AUTO_INCREMENT PRIMARY KEY,
    id_rol INT
);

CREATE TABLE estudiante_proyecto (
    id_estudiante INT,
    id_proyecto INT AUTO_INCREMENT PRIMARY KEY
);

CREATE TABLE docente_proyecto (
    id_docente INT,
    id_proyecto INT AUTO_INCREMENT PRIMARY KEY
    );

CREATE TABLE proyecto_asignatura (
    id_proyecto INT AUTO_INCREMENT PRIMARY KEY,
    id_asignatura INT
);

CREATE TABLE proyecto_ira (
    id_proyecto INT AUTO_INCREMENT PRIMARY KEY,
    id_ira INT
);

CREATE TABLE evaluacion (
    id_evaluacion INT,
    id_evaluador INT,
    nota_evaluacion INT
);
CREATE TABLE rep (
    id_rep INT AUTO_INCREMENT PRIMARY KEY,
    resultado CHAR(16) 
);

CREATE TABLE material (
    id_proyecto INT AUTO_INCREMENT PRIMARY KEY,
    id_material INT, 
    material CHAR(16)
);
