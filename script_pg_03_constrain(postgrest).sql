ALTER TABLE tipo_proyecto
ALTER COLUMN id_tipo_proyecto
SET NOT NULL,
ALTER COLUMN nombre1
SET NOT NULL

ALTER TABLE proyecto
ALTER COLUMN id_proyecto
SET NOT NULL,
ALTER COLUMN nombre
SET NOT NULL,
ADD CONSTRAINT un_fecha UNIQUE (fecha_inicio),
ALTER COLUMN id_tipo_proyecto
SET NOT NULL

ALTER TABLE programa_asignatura
ALTER COLUMN id_programa
SET NOT NULL,
ALTER COLUMN id_asignatura
SET NOT NULL

ALTER TABLE usuario
ALTER COLUMN id_usuario
SET NOT NULL,
ALTER COLUMN nombre1_usuario
SET NOT NULL,
ALTER COLUMN apellido1_usuario
SET NOT NULL,
ALTER COLUMN apellido2_usuario
SET NOT NULL,
ALTER COLUMN id_rol
SET NOT NULL

ALTER TABLE rol
ALTER COLUMN id_usuario
SET NOT NULL,
ALTER COLUMN nombre_rol
SET NOT NULL,
ALTER COLUMN id_rol
SET NOT NULL

ALTER TABLE permiso
ALTER COLUMN id_permiso
SET NOT NULL,
ALTER COLUMN id_rol
SET NOT NULL,
ALTER COLUMN tipo_permiso
SET NOT NULL

ALTER TABLE estudiante
ALTER COLUMN id_usuario
SET NOT NULL,
ALTER COLUMN id_programa
SET NOT NULL,
ALTER COLUMN id_asignatura
SET NOT NULL,
ALTER COLUMN codigo grupo
SET NOT NULL,
ADD CONSTRAINT un_f_ingreso UNIQUE (fecha_ingreso)

ALTER TABLE docente 
ALTER COLUMN id_docente
SET NOT NULL,
ALTER COLUMN id_asignatura
SET NOT NULL,
ALTER COLUMN nombre_docente
SET NOT NULL,
ALTER COLUMN apellido_docente
SET NOT NULL

ALTER TABLE programa
ALTER COLUMN id_programa
SET NOT NULL,
ALTER COLUMN nombre_programa
SET NOT NULL,
ALTER COLUMN id_usuario
SET NOT NULL,
ALTER COLUMN facultad
SET NOT NULL

ALTER TABLE asignatura
ALTER COLUMN id_usuario
SET NOT NULL,
ALTER COLUMN id_asignatura
SET NOT NULL,
ALTER COLUMN nombre_asignatura
SET NOT NULL,
ALTER COLUMN id_docente
SET NOT NULL

ALTER TABLE  entregable
ALTER COLUMN id_proyecto
SET NOT NULL,
ALTER COLUMN id_entregable
SET NOT NULL,
ALTER COLUMN nombre_entregable
SET NOT NULL

ALTER TABLE tipo_entregable
ALTER COLUMN id_tipo_entregable
SET NOT NULL,
ALTER COLUMN id_entregable
SET NOT NULL,
ALTER COLUMN id_proyecto
SET NOT NULL,
ALTER COLUMN nombre_tipo
SET NOT NULL

ALTER TABLE ira
ALTER COLUMN id_proyecto
SET NOT NULL,
ALTER COLUMN id_usuario
SET NOT NULL,
ALTER COLUMN indice
SET NOT NULL,
ALTER COLUMN id_asignatura
SET NOT NULL,
ALTER COLUMN id_docente
SET NOT NULL,
ALTER COLUMN id_ira
SET NOT NULL

ALTER TABLE usuario_rol
ALTER COLUMN id_usuario
SET NOT NULL,
ALTER COLUMN id_rol
SET NOT NULL

ALTER TABLE rol_permiso
ALTER COLUMN id_rol
SET NOT NULL,
ALTER COLUMN id_permiso
SET NOT NULL

ALTER TABLE estudiante_proyecto
ALTER COLUMN id_estudiante
SET NOT NULL,
ALTER COLUMN id_proyecto
SET NOT NULL

ALTER TABLE docente_proyecto
ALTER COLUMN id_docente
SET NOT NULL,
ALTER COLUMN id_proyecto
SET NOT NULL

ALTER TABLE proyecto_asignatura
ALTER COLUMN id_proyecto
SET NOT NULL,
ALTER COLUMN id_asignatura
SET NOT  NULL

ALTER TABLE proyecto_era
ALTER COLUMN id_proyecto
SET NOT NULL,
ALTER COLUMN id_era
SET NOT  NULL

ALTER TABLE proyecto_ira
ALTER COLUMN id_proyecto
SET NOT NULL,
ALTER COLUMN id_ira
SET NOT  NULL

ALTER TABLE evaluacion
ALTER COLUMN id_evaluacion
SET NOT NULL,
ALTER COLUMN id_evaluador
SET NOT NULL,
ALTER COLUMN nota_evaluacion
SET NOT NULL

ALTER TABLE rep
ALTER COLUMN id_rep
SET NOT NULL,
ALTER COLUMN resultado
SET NOT  NULL

ALTER TABLE material
ALTER COLUMN id_proyecto
SET NOT NULL,
ALTER COLUMN id_material
SET NOT NULL,
ALTER COLUMN material
SET NOT NULL

ALTER TABLE era
ALTER COLUMN id_proyecto
SET NOT NULL,
ALTER COLUMN id_asignatura
SET NOT  NULL,
ALTER COLUMN id_usuario
SET NOT NULL,
ALTER COLUMN id_docente
SET NOT  NULL,
ALTER COLUMN id_era
SET NOT NULL,
ALTER COLUMN evaluacion
SET NOT  NULL