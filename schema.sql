CREATE DATABASE vet_clinic;
\c vet_clinic

CREATE TABLE animals (
  id INT GENERATED ALWAYS AS IDENTITY,
  name VARCHAR(25),
  date_of_birth TIMESTAMP,
  escape_attempts INT,
  neutered BOOLEAN,
  weight_kg DECIMAL);

ALTER TABLE animals
  ADD species VARCHAR(20);
