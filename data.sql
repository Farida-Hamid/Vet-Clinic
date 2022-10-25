INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attempts)
  VALUES ('Agumon', '2020-02-03', 10.23, TRUE, 0);

INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attempts)
  VALUES ('GABUMON', '2018-11-15', 8.0, TRUE, 2);

INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attempts)
  VALUES ('Pikachu', '2021-01-07', 15.04, FALSE, 1);

INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attempts)
  VALUES ('Devimon', '2017-05-12', 11.0, TRUE, 5);

/* Fix typo */
UPDATE animals
  SET name = 'Gabumon' WHERE name = 'GABUMON';
   
INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attempts)
  VALUES ('Charmander', '2020-02-08', 11.0, FALSE, 0);
  
INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attempts)
  VALUES ('Plantmon', '2021-01-15', 5.7, True, 2);

INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attempts)
  VALUES ('Squirtle', '1993-04-02', 12.13, FALSE, 3);

INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attempts)
  VALUES ('Angemon', '2005-05-12', 5.7, True, 1);

INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attempts)
  VALUES ('Boarmon', '2005-05-07', 20.4, True, 7);

INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attempts)
  VALUES ('Blossom', '1998-10-13', 17.0, True, 3);
  
INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attempts)
  VALUES ('Ditto', '2022-05-14', 22.0, True, 4);
