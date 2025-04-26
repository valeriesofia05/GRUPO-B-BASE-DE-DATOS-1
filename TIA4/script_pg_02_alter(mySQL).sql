ALTER TABLE tipo_proyecto MODIFY COLUMN id_tipo_proyecto INT PRIMARY KEY;
ALTER TABLE usuario MODIFY COLUMN id_usuario INT PRIMARY KEY;
ALTER TABLE programa MODIFY COLUMN id_programa INT PRIMARY KEY;
ALTER TABLE docente MODIFY COLUMN id_docente INT PRIMARY KEY;
ALTER TABLE asignatura MODIFY COLUMN id_asignatura INT PRIMARY KEY;
ALTER TABLE estudiante MODIFY COLUMN id_usuario INT PRIMARY KEY;
ALTER TABLE entregable MODIFY COLUMN id_entregable INT PRIMARY KEY;
ALTER TABLE tipo_entregable MODIFY COLUMN id_tipo_entregable INT PRIMARY KEY;
ALTER TABLE evaluacion MODIFY COLUMN id_evaluacion INT PRIMARY KEY;

ALTER TABLE proyecto ADD CONSTRAINT fk_tipo_proyecto FOREIGN KEY (id_tipo_proyecto) REFERENCES tipo_proyecto(id_tipo_proyecto);
ALTER TABLE programa ADD CONSTRAINT fk_id_usuario FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario);
ALTER TABLE docente ADD CONSTRAINT fk_id_asignatura FOREIGN KEY (id_asignatura) REFERENCES asignatura(id_asignatura);
ALTER TABLE asignatura ADD CONSTRAINT fk_id_usuario2 FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario);
ALTER TABLE programa_asignatura ADD CONSTRAINT fk_id_programa FOREIGN KEY (id_programa) REFERENCES programa(id_programa);
 ALTER TABLE programa_asignatura ADD CONSTRAINT fk_id_asignatura2  FOREIGN KEY (id_asignatura) REFERENCES asignatura(id_asignatura);
ALTER TABLE rol ADD CONSTRAINT fk_id_usuario3 FOREIGN KEY (id_usuario) REFERENCES asignatura(id_usuario);
ALTER TABLE permiso ADD CONSTRAINT fk_id_rol FOREIGN KEY (id_rol) REFERENCES rol(id_rol);
ALTER TABLE estudiante ADD CONSTRAINT fk_id_programa2 FOREIGN KEY (id_programa) REFERENCES programa (id_programa);
ALTER TABLE estudiante ADD CONSTRAINT fk_id_asignatura3 FOREIGN KEY (id_asignatura) REFERENCES asignatura (id_asignatura);
ALTER TABLE tipo_entregable ADD CONSTRAINT fk_id_entregable FOREIGN KEY (id_entregable) REFERENCES entregable(id_entregable);
ALTER TABLE ira ADD CONSTRAINT fk_id_asignatura4 FOREIGN KEY (id_asignatura) REFERENCES asignatura(id_asignatura);
ALTER TABLE ira ADD CONSTRAINT fk_id_docente FOREIGN KEY (id_docente) REFERENCES docente(id_docente);
ALTER TABLE usuario_rol ADD CONSTRAINT fk_id_usuario4 FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario);
ALTER TABLE usuario_rol ADD CONSTRAINT fk_id_rol2 FOREIGN KEY (id_rol) REFERENCES rol(id_rol);
ALTER TABLE rol_permiso ADD CONSTRAINT fk_id_permiso  FOREIGN KEY (id_permiso) REFERENCES permiso(id_permiso);
ALTER TABLE rol_permiso ADD CONSTRAINT fk_id_rol3 FOREIGN KEY (id_rol) REFERENCES rol(id_rol);
ALTER TABLE estudiante_proyecto ADD CONSTRAINT fk_id_proyecto FOREIGN KEY (id_proyecto) REFERENCES proyecto(id_proyecto);
ALTER TABLE docente_proyecto ADD CONSTRAINT fk_id_docente2 FOREIGN KEY (id_docente) REFERENCES docente(id_docente);
ALTER TABLE docente_proyecto ADD CONSTRAINT fk_id_proyecto3 FOREIGN KEY (id_proyecto) REFERENCES proyecto(id_proyecto);
ALTER TABLE proyecto_asignatura ADD CONSTRAINT fk_id_proyecto4 FOREIGN KEY (id_proyecto) REFERENCES proyecto(id_proyecto);
 ALTER TABLE proyecto_asignatura ADD CONSTRAINT fk_id_asignatura5 FOREIGN KEY (id_asignatura) REFERENCES asignatura(id_asignatura);
ALTER TABLE proyecto_ira ADD CONSTRAINT fk_id_proyecto5 FOREIGN KEY (id_proyecto) REFERENCES proyecto(id_proyecto);
ALTER TABLE material ADD CONSTRAINT fk_id_proyecto6 FOREIGN KEY (id_proyecto) REFERENCES proyecto(id_proyecto);


ALTER TABLE proyecto MODIFY fecha_inicio DATE UNIQUE KEY;
ALTER TABLE estudiante ADD COLUMN id_estudiante INT UNIQUE KEY;
ALTER TABLE estudiante MODIFY COLUMN fecha_ingreso DATE UNIQUE KEY;