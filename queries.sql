/* Fix typo */
vet_clinic=# UPDATE animals
             SET name = 'Gabumon' WHERE name = 'GABUMON';
             
vet_clinic=# SELECT * FROM animals WHERE name LIKE '%mon%';

vet_clinic=# SELECT name FROM animals WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-12-30';

vet_clinic=# SELECT name FROM animals WHERE neutered = TRUE AND escape_attempts < 3;

vet_clinic=# SELECT date_of_birth FROM animals WHERE name IN ('Agumon', 'Pikachu');

vet_clinic=# SELECT escape_attempts FROM animals WHERE weight_kg > 10.5;

vet_clinic=# SELECT * FROM animals WHERE neutered = TRUE;

vet_clinic=# SELECT * FROM animals WHERE name != 'Gabumon';

vet_clinic=# SELECT * FROM animals WHERE weight_kg BETWEEN 10.4 AND 17.3;
