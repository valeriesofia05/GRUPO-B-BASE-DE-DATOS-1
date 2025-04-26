ALTER TABLE tipo_proyecto
ADD PRIMARY KEY (id_tipo_proyecto)

ALTER TABLE proyecto
ADD PRIMARY KEY (id_proyecto)
ADD FOREIGN KEY (id_tipo_proyecto)
REFERENCES tipo_proyecto(id_tipo_proyecto)

ALTER TABLE usuario
ADD PRIMARY KEY (id_usuario),
ADD FOREIGN KEY (id_rol)
REFERENCES rol (id_rol)

ALTER TABLE rol
ADD PRIMARY KEY (id_rol),
ADD FOREIGN KEY (id_usuario)
REFERENCES usuario (id_usuario)

ALTER TABLE permiso 
ADD PRIMARY KEY (id_permiso),
ADD FOREIGN KEY (id_rol)
REFERENCES rol (id_rol)

ALTER TABLE estudiante
ADD PRIMARY KEY (id_estudiante),
ADD FOREIGN KEY (id_programa)
REFERENCES programa (id_programa),
ADD FOREIGN KEY (id_asignatura)
REFERENCES asignatura (id_asignatura),
ADD FOREIGN KEY (id_usuario)
REFERENCES usuario (id_usuario)

ALTER TABLE docente 
ADD PRIMARY KEY (id_docente)

ALTER TABLE programa
ADD PRIMARY KEY (id_programa),
ADD FOREIGN KEY (id_usuario)
REFERENCES usuario (id_usuario)

ALTER TABLE asignatura 
ADD PRIMARY KEY (id_asignatura),
ADD FOREIGN KEY (id_usuario)
REFERENCES usuario (id_usuario)

ALTER TABLE entregable 
ADD PRIMARY KEY (id_entregable),
ADD FOREIGN KEY (id_proyecto)
REFERENCES proyecto (id_proyecto)

ALTER TABLE tipo_entregable
ADD PRIMARY KEY (id_tipo_entregable),
ADD FOREIGN KEY (id_entregable)
REFERENCES entregable (id_entregable),
ADD FOREIGN KEY (id_proyecto)
REFERENCES proyecto (id_proyecto)

ALTER TABLE ira
ADD PRIMARY KEY (id_ira),
ADD FOREIGN KEY (id_usuario)
REFERENCES usuario (id_usuario),
ADD FOREIGN KEY (id_asignatura)
REFERENCES asignatura (id_asignatura),
ADD FOREIGN KEY (id_docente)
REFERENCES docente (id_docente),
ADD FOREIGN KEY (id_proyecto)
REFERENCES proyecto (id_proyecto)

ALTER TABLE evaluacion
ADD PRIMARY KEY (id_evaluacion)

ALTER TABLE rep 
ADD PRIMARY KEY (id_rep)

ALTER TABLE material
ADD PRIMARY KEY (id_material),
ADD FOREIGN KEY (id_proyecto)
REFERENCES proyecto (id_proyecto)

ALTER TABLE era
ADD PRIMARY KEY (id_era),
ADD FOREIGN KEY (id_proyecto)
REFERENCES proyecto (id_proyecto),
ADD FOREIGN KEY (id_usuario)
REFERENCES usuario (id_usuario),
ADD FOREIGN KEY (id_asignatura)
REFERENCES asignatura (id_asignatura),
ADD FOREIGN KEY (id_docente)
REFERENCES docente (id_docente)

ALTER TABLE programa_asignatura
ADD FOREIGN KEY (id_programa)
REFERENCES programa (id_programa),
ADD FOREIGN KEY (id_asignatura)
REFERENCES asignatura (id_asignatura)

ALTER TABLE usuario_rol
ADD FOREIGN KEY (id_usuario)
REFERENCES usuario (id_usuario),
ADD FOREIGN KEY (id_rol)
REFERENCES rol (id_rol)

ALTER TABLE rol_permiso
ADD FOREIGN KEY (id_rol)
REFERENCES rol (id_rol),
ADD FOREIGN KEY (id_permiso)
REFERENCES permiso (id_permiso)

ALTER TABLE estudiante_proyecto
ADD FOREIGN KEY (id_estudiante)
REFERENCES estudiante (id_estudiante),
ADD FOREIGN KEY (id_proyecto)
REFERENCES proyecto (id_proyecto)

ALTER  TABLE docente_proyecto
ADD FOREIGN KEY (id_docente)
REFERENCES docente (id_docente),
ADD FOREIGN KEY (id_proyecto)
REFERENCES proyecto (id_proyecto)

ALTER TABLE proyecto_asignatura
ADD FOREIGN KEY (id_proyecto)
REFERENCES proyecto (id_proyecto),
ADD FOREIGN KEY (id_asignatura)
REFERENCES asignatura (id_asignatura)

ALTER TABLE proyecto_era
ADD FOREIGN KEY (id_proyecto)
REFERENCES proyecto (id_proyecto),
ADD FOREIGN KEY (id_era)
REFERENCES era (id_era)

ALTER TABLE proyecto_ira
ADD FOREIGN KEY (id_proyecto)
REFERENCES proyecto (id_proyecto),
ADD FOREIGN KEY (id_ira)
REFERENCES ira (id_ira)


