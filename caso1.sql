-- Caso 1
-- Un trabajador pertenece a un departamento.
-- El trabajador tiene un nombre, rut y dirección.
-- El departamento tiene un nombre.
-- Un trabajador posee liquidaciones.
-- La liquidación se guarda en un archivo drive.

CREATE DATABASE caso1;
\c caso1

CREATE TABLE departments (
    id SERIAL PRIMARY KEY,
    name_department VARCHAR(50)
);
INSERT INTO departments (name_department) VALUES ('Proyecto');

CREATE TABLE workers(
    id SERIAL PRIMARY KEY,
    name_employee VARCHAR (50),
    last_name VARCHAR (50),
    rut  INT,
    home_address VARCHAR (100),
    FOREIGN KEY (id) REFERENCES departments (id)
);
INSERT INTO workers (name_employee, last_name, rut, home_address) VALUES ('Cristóbal', 'Paredes', '16920292', 'Javiera Carrera #50');

CREATE TABLE drives(
    id SERIAL PRIMARY KEY,
    name_link VARCHAR(50)
);
INSERT INTO drives (name_link) VALUES ('Liquidación Junio 2020');

CREATE TABLE liquidations_in_drive (
    id SERIAL PRIMARY KEY,
    FOREIGN KEY (id) REFERENCES workers (id),
    FOREIGN KEY (id) REFERENCES drives (id)
);

