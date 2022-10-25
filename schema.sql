postgres=# CREATE DATABASE vet_clinic;
postgres=# \c vet_clinic

vet_clinic=# CREATE TABLE animals (
  id INT GENERATED ALWAYS AS IDENTITY,
  name VARCHAR(25),
  date_of_birth TIMESTAMP,
  escape_attempts INT,
  neutered BOOLEAN,
  weight_kg DECIMAL);
