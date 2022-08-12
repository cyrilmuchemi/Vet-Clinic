/* Database schema to keep the structure of entire database. */

CREATE TABLE animals(
    id SERIAL PRIMARY KEY,
    name text NOT NULL,
    date_of_birth date NOT NULL,
    escape_attempts integer NOT NULL,
    neutered boolean NOT NULL,
    weight_kg decimal NOT NULL
);

CREATE TABLE owners(
    id SERIAL PRIMARY KEY,
    full_name text NOT NULL,
    age integer NOT NULL
);

CREATE TABLE species(
    id SERIAL PRIMARY KEY,
    name text NOT NULL
);

ALTER TABLE
    animals DROP COLUMN species;

ALTER TABLE
    animals
ADD
    COLUMN species_id INT REFERENCES species;

ALTER TABLE
    animals
ADD
    COLUMN owner_id INT REFERENCES owners;

CREATE TABLE vets(
    id SERIAL PRIMARY KEY,
    name text NOT NULL,
    age integer NOT NULL,
    date_of_graduation date NOT NULL
);

CREATE TABLE specializations(
    species_id integer NOT NULL REFERENCES species,
    vet_id integer NOT NULL REFERENCES vets,
    PRIMARY KEY (species_id, vet_id)
);

CREATE TABLE visits(
    animal_id integer NOT NULL REFERENCES animals,
    vet_id integer NOT NULL REFERENCES vets,
    date_of_visit date NOT NULL,
    PRIMARY KEY (animal_id, vet_id)
);