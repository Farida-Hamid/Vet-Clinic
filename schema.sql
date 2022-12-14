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

CREATE TABLE owners (
  id SERIAL PRIMARY KEY,
  full_name VARCHAR(25),
  age INT );

CREATE TABLE species(
  id SERIAL PRIMARY KEY,
  name VARCHAR(25) );
  
ALTER TABLE animals
  ADD PRIMARY KEY (id);
  
ALTER TABLE animals
  DROP COLUMN species;

ALTER TABLE animals
  ADD species_id INT
  REFERENCES species(id);
  
ALTER TABLE animals
  ADD CONSTRAINT species_id
  FOREIGN KEY(species_id)
  REFERENCES species(ID);
  
ALTER TABLE animals 
  ADD owner_id INT 
  REFERENCES owners(id);
  
ALTER TABLE animals
  ADD CONSTRAINT owner_id
  FOrEIGN KEY(owner_id)
  REFERENCES owners(id);
  
CREATE TABLE vets (
  id SERIAL PRIMARY KEY,
  name VARCHAR(25),
  age INT, 
  date_of_graduation TIMESTAMP);
  
CREATE TABLE specializations (
  species_id INT REFERENCES species(id),
  vet_id INT REFERENCES vets(id));

CREATE TABLE visits (
  animal_id INT REFERENCES animals(id),
  vet_id INT REFERENCES vets(id),
  date DATE);

CREATE INDEX anima_id_asc ON visits(animal_id ASC);
CREATE INDEX vet_id_asc ON visits(vet_id);
CREATE INDEX email_asc ON owners(email);
