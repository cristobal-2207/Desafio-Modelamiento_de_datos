-- Caso 2
-- Un alumno, con nombre y rut pertenece a un curso.
-- Un curso tiene muchos alumnos.
-- Un alumno realiza pruebas.
-- Las pruebas las califica un profesor .
-- La prueba tiene un puntaje.
-- El profesor tiene nombre y departamento.

CREATE DATABASE caso2;
\c caso2

CREATE TABLE departamento(
    id SERIAL PRIMARY KEY,
    nombre_departamento VARCHAR (40)
);

CREATE TABLE profesor(
    id SERIAL PRIMARY KEY,
    id_Departamento INT,
    FOREIGN KEY (id_Departamento) REFERENCES departamento (id)  
);


CREATE TABLE curso(
    id SERIAL PRIMARY KEY,
    name_Curso VARCHAR (30),
    id_Profesor INT,
    FOREIGN KEY (id_Profesor) REFERENCES profesor (id)
);

CREATE TABLE pruebas(
    id SERIAL PRIMARY KEY,
    puntaje_Prueba INT,
    id_Profesor INT,
    FOREIGN KEY (id_Profesor) REFERENCES profesor (id)
    
);

CREATE TABLE alumno(
    id SERIAL PRIMARY KEY,
    nombre_Alumno VARCHAR (40),
    id_Curso INT,
    FOREIGN KEY (id_Curso) REFERENCES curso (id)
);