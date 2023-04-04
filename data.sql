/* Populate database with sample data. */

vet_clinic=# INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) 
VALUES ('Agumon', '2020-02-03', 0, true, 10.23);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) 
VALUES ('Gabumon', '2018-11-15', 2, true, 8);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) 
VALUES ('Pikachu', '2021-01-07', 1, false, 15.04);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) 
VALUES ('Devimon', '2017-05-12', 5, true, 11);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg, species)
VALUES ('Charmander', '2020-02-08', 0, FALSE, -11.0, '');

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg, species) 
VALUES ('Plantmon', '2021-11-15', 2, TRUE, -5.7, '');

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg, species) 
VALUES ('Squirtle', '1993-04-02', 3, FALSE, -12.13, '');

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg, species) 
VALUES ('Angemon', '2005-06-12', 1, TRUE, -45.0, '');

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg, species) 
VALUES ('Boarmon', '2005-06-07', 7, TRUE, 20.4, '');

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg, species) 
VALUES ('Blossom', '1998-10-13', 3, TRUE, 17.0, '');

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg, species) 
VALUES ('Ditto', '2022-05-14', 4, TRUE, 22.0, '');


