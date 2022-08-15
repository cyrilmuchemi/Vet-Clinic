/* Populate database with sample data. */

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES  ('Agumon', 'February 3, 2020', 0, TRUE, 10.23),
    ('Gabumon', 'November 15, 2018', 2, TRUE, 8),
    ('Pikachu', 'January 7, 2021', 1, FALSE, 15.04),
    ('Devimon', 'May 12, 2017', 5, TRUE, 11);


INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES('Charmander', '2020-02-08', 0, FALSE, -11.0),
('Plantmon', '2021-11-15', 2, TRUE, -5.7 ),
('Squirtle', '1993-04-02', 3, FALSE, -12.13),
('Angemon', '2005-06-12', 1, TRUE, -45.0 ),
('Boarmon', '2005-07-06', 7, TRUE, 20.4),
('Blossom', '1998-10-13', 3, TRUE, 17.0),
('Ditto', '2022-05-14', 4, TRUE, 22.0);

INSERT INTO
    owners(full_name, age)
VALUES
    ('Sam Smith', 34),
    ('Jennifer Orwell', 19),
    ('Bob', 45),
    ('Melody Pond', 77),
    ('Dean Winchester', 14),
    ('Jodie Whittaker', 38);

INSERT INTO
    species(name)
VALUES
    ('Pokemon'),
    ('Digimon');

UPDATE
    animals
SET
    species_id = species.id
FROM
    species
WHERE
    animals.name like '%mon'
    AND species.name = 'Digimon';

UPDATE
    animals
SET
    species_id = species.id
FROM
    species
WHERE
    animals.name NOT like '%mon'
    AND species.name = 'Pokemon';

UPDATE
    animals
SET
    owner_id = owners.id
FROM
    owners
WHERE
    animals.name = 'Agumon'
    AND owners.full_name = 'Sam Smith';

UPDATE
    animals
SET
    owner_id = owners.id
FROM
    owners
WHERE
    animals.name IN ('Gabumon', 'Pikachu')
    AND owners.full_name = 'Jennifer Orwell';

UPDATE
    animals
SET
    owner_id = owners.id
FROM
    owners
WHERE
    animals.name IN ('Devimon', 'Plantmon')
    AND owners.full_name = 'Bob';

UPDATE
    animals
SET
    owner_id = owners.id
FROM
    owners
WHERE
    animals.name IN ('Charmander', 'Squirtle', 'Blossom')
    AND owners.full_name = 'Melody Pond';

UPDATE
    animals
SET
    owner_id = owners.id
FROM
    owners
WHERE
    animals.name IN ('Angemon', 'Boarmon')
    AND owners.full_name = 'Dean Winchester';


INSERT INTO vets (name, age, date_of_graduation)
VALUES ('William Tatcher', 45, '2000-04-23'),
('Maisy Smith', 26, '2019-01-17'),
('Stephanie Mendez', 64, '1981-05-04'),
('Jack Harkness', 38, '2008-08-06');


INSERT INTO specializations (species_id, vet_id)
SELECT species.id, vets.id
FROM species, vets
WHERE species.name = 'Pokemon' AND vets.name = 'William Tatcher';

INSERT INTO specializations (species_id, vet_id)
SELECT species.id, vets.id
FROM species, vets
WHERE species.name IN ('Pokemon', 'Digimon') AND vets.name = 'Stephanie Mendez';

INSERT INTO specializations (species_id, vet_id)
SELECT species.id, vets.id
FROM species, vets
WHERE species.name IN ('Digimon') AND vets.name = 'Jack Harkness';

INSERT INTO
    visits (animal_id, vet_id, date_of_visit)
SELECT
    animals.id,
    vets.id,
    'May 24, 2020'
FROM
    animals,
    vets
WHERE
    animals.name = 'Agumon'
    AND vets.name = 'William Tatcher';


INSERT INTO
    visits (animal_id, vet_id, date_of_visit)
SELECT
    animals.id,
    vets.id,
    'July 22, 2020'
FROM
    animals,
    vets
WHERE
    animals.name = 'Agumon'
    AND vets.name = 'Stephanie Mendez';


INSERT INTO
    visits (animal_id, vet_id, date_of_visit)
SELECT
    animals.id,
    vets.id,
    'February 2, 2021'
FROM
    animals,
    vets
WHERE
    animals.name = 'Gabumon'
    AND vets.name = 'Jack Harkness';
    

INSERT INTO
    visits (animal_id, vet_id, date_of_visit)
SELECT
    animals.id,
    vets.id,
    'January 5, 2020'
FROM
    animals,
    vets
WHERE
    animals.name = 'Pikachu'
    AND vets.name = 'Maisy Smith';


INSERT INTO
    visits (animal_id, vet_id, date_of_visit)
SELECT
    animals.id,
    vets.id,
    'March 8, 2020'
FROM
    animals,
    vets
WHERE
    animals.name = 'Pikachu'
    AND vets.name = 'Maisy Smith';


INSERT INTO
    visits (animal_id, vet_id, date_of_visit)
SELECT
    animals.id,
    vets.id,
    'May 14, 2020'
FROM
    animals,
    vets
WHERE
    animals.name = 'Pikachu'
    AND vets.name = 'Maisy Smith';


INSERT INTO
    visits (animal_id, vet_id, date_of_visit)
SELECT
    animals.id,
    vets.id,
    'May 4, 2021'
FROM
    animals,
    vets
WHERE
    animals.name = 'Devimon'
    AND vets.name = 'Stephanie Mendez';

INSERT INTO
    visits (animal_id, vet_id, date_of_visit)
SELECT
    animals.id,
    vets.id,
    'February 24, 2021'
FROM
    animals,
    vets
WHERE
    animals.name = 'Charmander'
    AND vets.name = 'Jack Harkness';

INSERT INTO
    visits (animal_id, vet_id, date_of_visit)
SELECT
    animals.id,
    vets.id,
    'December 21, 2019'
FROM
    animals,
    vets
WHERE
    animals.name = 'Plantmon'
    AND vets.name = 'Maisy Smith';


INSERT INTO
    visits (animal_id, vet_id, date_of_visit)
SELECT
    animals.id,
    vets.id,
    'August 10, 2020'
FROM
    animals,
    vets
WHERE
    animals.name = 'Plantmon'
    AND vets.name = 'William Tatcher';

INSERT INTO
    visits (animal_id, vet_id, date_of_visit)
SELECT
    animals.id,
    vets.id,
    'April 7, 2021'
FROM
    animals,
    vets
WHERE
    animals.name = 'Plantmon'
    AND vets.name = 'Maisy Smith';


INSERT INTO
    visits (animal_id, vet_id, date_of_visit)
SELECT
    animals.id,
    vets.id,
    'September 29, 2019'
FROM
    animals,
    vets
WHERE
    animals.name = 'Squirtle'
    AND vets.name = 'Stephanie Mendez';


INSERT INTO
    visits (animal_id, vet_id, date_of_visit)
SELECT
    animals.id,
    vets.id,
    'October 3, 2020'
FROM
    animals,
    vets
WHERE
    animals.name = 'Angemon'
    AND vets.name = 'Jack Harkness';


INSERT INTO
    visits (animal_id, vet_id, date_of_visit)
SELECT
    animals.id,
    vets.id,
    'November 4, 2020'
FROM
    animals,
    vets
WHERE
    animals.name = 'Angemon'
    AND vets.name = 'Jack Harkness';


INSERT INTO
    visits (animal_id, vet_id, date_of_visit)
SELECT
    animals.id,
    vets.id,
    'January 24, 2019'
FROM
    animals,
    vets
WHERE
    animals.name = 'Boarmon'
    AND vets.name = 'Maisy Smith';


INSERT INTO
    visits (animal_id, vet_id, date_of_visit)
SELECT
    animals.id,
    vets.id,
    'May 15, 2019'
FROM
    animals,
    vets
WHERE
    animals.name = 'Boarmon'
    AND vets.name = 'Maisy Smith';


INSERT INTO
    visits (animal_id, vet_id, date_of_visit)
SELECT
    animals.id,
    vets.id,
    'February 27, 2020'
FROM
    animals,
    vets
WHERE
    animals.name = 'Boarmon'
    AND vets.name = 'Maisy Smith';


INSERT INTO
    visits (animal_id, vet_id, date_of_visit)
SELECT
    animals.id,
    vets.id,
    'August 3, 2020'
FROM
    animals,
    vets
WHERE
    animals.name = 'Boarmon'
    AND vets.name = 'Maisy Smith';


INSERT INTO
    visits (animal_id, vet_id, date_of_visit)
SELECT
    animals.id,
    vets.id,
    'May 24, 2020'
FROM
    animals,
    vets
WHERE
    animals.name = 'Blossom'
    AND vets.name = 'Stephanie Mendez';


INSERT INTO
    visits (animal_id, vet_id, date_of_visit)
SELECT
    animals.id,
    vets.id,
    'January 11, 2021'
FROM
    animals,
    vets
WHERE
    animals.name = 'Blossom'
    AND vets.name = 'William Tatcher';


ALTER TABLE owners 
ADD COLUMN email VARCHAR(120);

INSERT INTO visits (animal_id, vet_id, date_of_visit) 
SELECT * FROM (SELECT id FROM animals) animal_ids 
(SELECT id FROM vets) vets_ids, generate_series('1980-01-01'::timestamp, '2021-01-01', '4 hours') visit_timestamp;


