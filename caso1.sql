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

CREATE TABLE drives(
    id SERIAL PRIMARY KEY,
    name_link VARCHAR(50)
);

CREATE TABLE workers(
    id SERIAL PRIMARY KEY,
    name_employee VARCHAR (50),
    last_name VARCHAR (50),
    rut  INT,
    home_address VARCHAR (100),
    id_department INT,
    FOREIGN KEY (id_department) REFERENCES departments (id)
);

CREATE TABLE liquidations_in_drive (
    id SERIAL PRIMARY KEY,
    id_workers INT,
    id_drives INT,
    FOREIGN KEY (id_workers) REFERENCES workers (id),
    FOREIGN KEY (id_drives) REFERENCES drives (id)
);

