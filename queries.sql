SELECT * FROM animals WHERE name LIKE '%mon%';

SELECT name FROM animals WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-12-30';

SELECT name FROM animals WHERE neutered = TRUE AND escape_attempts < 3;

SELECT date_of_birth FROM animals WHERE name IN ('Agumon', 'Pikachu');

SELECT escape_attempts FROM animals WHERE weight_kg > 10.5;

SELECT * FROM animals WHERE neutered = TRUE;

SELECT * FROM animals WHERE name != 'Gabumon';

SELECT * FROM animals WHERE weight_kg BETWEEN 10.4 AND 17.3;

BEGIN;
UPDATE animals SET species = 'unspecified';
SELECT * FROM animals;
ROLLBACK;
SELECT * FROM animals;

BEGIN;
UPDATE animals SET species = 'digimon' WHERE name LIKE '%mon';
UPDATE animals SET species = 'pokemon' WHERE species IS NULL;
SELECT * FROM animals;
COMMIT;
SELECT * FROM animals;

BEGIN;
DELETE FROM animals;
SELECT * FROM animals;
ROLLBACK;
SELECT * FROM animals;

BEGIN;
DELETE FROM animals WHERE date_of_birth > '2022-01-01';
SAVEPOINT one;
UPDATE animals SET weight_kg = weight_kg * -1;
ROLLBACK TO one;
UPDATE animals SET weight_kg = weight_kg * -1 WHERE weight_kg < 0;
COMMIT;

SELECT COUNT(*) FROM animals;

SELECT COUNT(*) FROM animals WHERE escape_attempts = 0;

SELECT AVG(weight_kg) FROM animals;

SELECT SUM(escape_attempts) FROM animals GROUP BY neutered;

SELECT MIN(weight_kg), MAX(weight_kg) FROM animals GROUP BY species;

SELECT AVG(escape_attempts) FROM animals WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-12-30';

SELECT animals.name
  FROM animals INNER 
  JOIN owners 
  ON animals.owner_id = owners.id 
  WHERE owners.full_name = 'Melody Pond';
  
SELECT animals.name
  FROM animals 
  JOIN species 
  ON animals.species_id = species.id 
  WHERE species.id = 1;
  
SELECT owners.full_name, animals.name 
  FROM owners 
  LEFT JOIN animals 
  ON owners.id = animals.owner_id;

SELECT COUNT(animals.species_id) 
  FROM animals 
  JOIN species 
  ON species.id = animals.species_id 
  GROUP BY species.name;

SELECT animals.name
  FROM animals INNER
  JOIN owners
  ON animals.owner_id = owners.id 
  WHERE owners.full_name = 'Dean Winchester' AND animals.escape_attempts = 0;

SELECT full_name 
  FROM owners 
  JOIN animals on owners.id = animals.owner_id 
  GROUP BY full_name 
  ORDER BY COUNT (owner_id) desc limit 1;
