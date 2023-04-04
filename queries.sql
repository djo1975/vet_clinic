/*Queries that provide answers to the questions from all projects.*/

SELECT * FROM animals 
WHERE name LIKE '%mon';
SELECT name FROM animals
WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-12-31';
SELECT name FROM animals
WHERE neutered = true AND escape_attempts < 3;
SELECT date_of_birth FROM animals
WHERE name IN ('Agumon', 'Pikachu');
SELECT name, escape_attempts FROM animals
WHERE weight_kg > 10.5;
SELECT * FROM animals
WHERE neutered = true;
SELECT * FROM animals
WHERE name <> 'Gabumon';
SELECT * FROM animals
WHERE weight_kg BETWEEN 10.4 AND 17.3;
-- Update animals table to set species as unspecified and then roll back
BEGIN;
UPDATE animals SET species = 'unspecified';
SELECT * FROM animals WHERE species = 'unspecified';
ROLLBACK;
SELECT * FROM animals WHERE species = 'unspecified';

-- Update animals table to set species as digimon and then set species as pokemon
BEGIN;
UPDATE animals SET species = 'digimon' WHERE name LIKE '%mon';
UPDATE animals SET species = 'pokemon' WHERE species IS NULL;
COMMIT;
SELECT * FROM animals;

-- Delete all records in the animals table and then roll back
BEGIN;
DELETE FROM animals WHERE date_of_birth > '2022-01-01';
SAVEPOINT my_savepoint;
UPDATE animals SET weight_kg = weight_kg * -1;
ROLLBACK TO my_savepoint;
UPDATE animals SET weight_kg = weight_kg * -1 WHERE weight_kg < 0;
COMMIT;
SELECT * FROM animals;

-- How many animals are there?
SELECT COUNT(*) FROM animals;

-- How many animals have never tried to escape?
SELECT COUNT(*) FROM animals WHERE escape_attempts = 0;

-- What is the average weight of animals?
SELECT AVG(weight_kg) FROM animals;

-- Who escapes the most, neutered or not neutered animals?
SELECT neutered, SUM(escape_attempts) AS total_escape_attempts
FROM animals
GROUP BY neutered
ORDER BY total_escape_attempts DESC
LIMIT 1;

-- What is the minimum and maximum weight of each type of animal?
SELECT species, MIN(weight_kg), MAX(weight_kg)
FROM animals
GROUP BY species;

-- What is the average number of escape attempts per animal type of those born between 1990 and 2000?
SELECT species, AVG(escape_attempts) AS avg_escape_attempts
FROM animals
WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-12-31'
GROUP BY species;
