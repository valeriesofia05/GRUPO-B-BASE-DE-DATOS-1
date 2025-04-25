CREATE TABLE tipo_proyecto (
    id_tipo_proyecto INT PRIMARY KEY,
    nombre VARCHAR(50)
);

CREATE TABLE proyecto (
    id_proyecto INT IDENTITY(1,1) PRIMARY KEY,
    nombre VARCHAR(50),
    fecha_inicio DATE,
    id_tipo_proyecto INT
);

CREATE TABLE usuario (
    id_usuario INT PRIMARY KEY,
    nombre_usuario VARCHAR(50),
    apellido1_usuario VARCHAR(50),
    apellido2_usuario VARCHAR(50),
    rol VARCHAR(50),
    permiso VARCHAR(50)
);

CREATE TABLE programa (
    id_programa INT PRIMARY KEY,
    nombre_programa VARCHAR(16),
    id_usuario INT,
    facultad VARCHAR(16)
);

CREATE TABLE docente (
    id_docente INT PRIMARY KEY,
    id_asignatura INT,
    nombre_docente VARCHAR(16),
    apellido_docente VARCHAR(16)
);

CREATE TABLE asignatura (
    id_asignatura INT PRIMARY KEY,
    id_usuario INT,
    nombre_asignatura VARCHAR(16),
    id_docente INT
);

CREATE TABLE programa_asignatura (
    id_programa INT,
    id_asignatura INT
);

CREATE TABLE rol (
    id_rol INT IDENTITY(1,1) PRIMARY KEY,
    nombre_rol VARCHAR(50),
    id_usuario INT
);

CREATE TABLE permiso (
    id_permiso INT IDENTITY(1,1) PRIMARY KEY,
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
    id_entregable INT PRIMARY KEY,
    id_proyecto INT,
    nombre_entregable VARCHAR(16)
);

CREATE TABLE tipo_entregable (
    id_tipo_entregable INT PRIMARY KEY,
    id_entregable INT,
    id_proyecto INT,
    nombre_tipo VARCHAR(16)
);

CREATE TABLE ira (
    id_ira INT PRIMARY KEY,
    id_proyecto INT,
    id_usuario INT,
    indice INT,
    id_asignatura INT,
    id_docente INT
);

CREATE TABLE material (
    id_proyecto INT IDENTITY(1,1) PRIMARY KEY,
    id_material INT,
    material CHAR(16)
);