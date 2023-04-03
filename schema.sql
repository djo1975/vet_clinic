/* Database schema to keep the structure of entire database. */

vet_clinic=# CREATE TABLE animals (
  id INTEGER PRIMARY KEY DEFAULT nextval('animals_id_seq'),
  name VARCHAR(255),
  date_of_birth DATE,
  escape_attempts INTEGER,
  neutered BOOLEAN,
  weight_kg DECIMAL(5,2)
);

