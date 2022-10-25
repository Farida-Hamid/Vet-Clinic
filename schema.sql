postgres=# CREATE DATABASE vet_clinic;
postgres=# \c vet_clinic

vet_clinic=# CREATE TABLE animals (
vet_clinic(# id INT,
vet_clinic(# name VARCHAR(25),
vet_clinic(# date_of_birth TIMESTAMP,
vet_clinic(# escape_attempts INT,
vet_clinic(# neutered BOOLEAN,
vet_clinic(# weight_kg DECIMAL);
