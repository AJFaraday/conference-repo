DROP TABLE species;
DROP TABLE animals;
DROP TABLE keepers;
DROP TABLE animals_keepers;
DROP sequence species_id_seq;
DROP sequence animal_id_seq;
DROP sequence keeper_id_seq;
/* create schema */
CREATE TABLE species
(
  id          NUMBER(32),
  common_name VARCHAR(255),
  latin_name  VARCHAR(255),
  description VARCHAR(4000)
);
CREATE sequence species_id_seq start with 1 increment BY 1 nocache nocycle;
CREATE TABLE animals
(
  id         NUMBER(32) NOT NULL,
  name       VARCHAR(255) NOT NULL,
  age        NUMBER(32),
  last_fed   DATE,
  species_id NUMBER(32)
);
CREATE sequence animal_id_seq start with 1 increment BY 1 nocache nocycle;
CREATE TABLE keepers
(
  id     NUMBER(32) NOT NULL,
  name   VARCHAR(255) NOT NULL,
  age    NUMBER(32) NOT NULL,
  salary NUMBER(32) NOT NULL
);
CREATE sequence keeper_id_seq start with 1 increment BY 1 nocache nocycle;
CREATE TABLE animals_keepers
( animal_id NUMBER(32), keeper_id NUMBER(32)
) ;
/* dogs */
INSERT
INTO species
(
  id,
  common_name,
  latin_name,
  description
)
VALUES
  (
    species_id_seq.nextval,
    'dog',
    'canis lupus familiaris',
    'The domestic dog is a domesticated canid which has been selectively bred for millennia for various behaviors, sensory capabilities, and physical attributes.'
  );
INSERT
INTO animals
(
  id,
  name,
  age,
  last_fed,
  species_id
)
VALUES
  (
    animal_id_seq.nextval,
    'Shep',
    6,
    (sysdate - (1/24)),
    species_id_seq.currval );
INSERT
INTO animals
(
  id,
  name,
  age,
  last_fed,
  species_id
)
VALUES
  (
    animal_id_seq.nextval,
    'Bonnie',
    4,
    (sysdate - (1/24)),
    species_id_seq.currval );
INSERT
INTO animals
(
  id,
  name,
  age,
  last_fed,
  species_id
)
VALUES
  (
    animal_id_seq.nextval,
    'Rover',
    6,
    (sysdate - (2/24)),
    species_id_seq.currval );
INSERT
INTO animals
(
  id,
  name,
  age,
  last_fed,
  species_id
)
VALUES
  (
    animal_id_seq.nextval,
    'Fido',
    3,
    (sysdate - (1/24)),
    species_id_seq.currval );
INSERT
INTO animals
(
  id,
  name,
  age,
  last_fed,
  species_id
)
VALUES
  (
    animal_id_seq.nextval,
    'Buster',
    1,
    (sysdate - (2/24)),
    species_id_seq.currval );
/* cats */
INSERT
INTO species
(
  id,
  common_name,
  latin_name,
  description
)
VALUES
  (
    species_id_seq.nextval,
    'cat',
    'felis catus',
    'The domestic cat is a small, usually furry, domesticated, and carnivorous mammal. They are often called housecats when kept as indoor pets or simply cats when there is no need to distinguish them from other felids and felines.'
  );
INSERT
INTO animals
(
  id,
  name,
  age,
  last_fed,
  species_id
)
VALUES
  (
    animal_id_seq.nextval,
    'Smudge',
    2,
    (sysdate - (1/24)),
    species_id_seq.currval );
INSERT
INTO animals
(
  id,
  name,
  age,
  last_fed,
  species_id
)
VALUES
  (
    animal_id_seq.nextval,
    'Tiddles',
    8,
    (sysdate - (2/24)),
    species_id_seq.currval );
INSERT
INTO animals
(
  id,
  name,
  age,
  last_fed,
  species_id
)
VALUES
  (
    animal_id_seq.nextval,
    'Kipper',
    3,
    (sysdate - (1/24)),
    species_id_seq.currval );
INSERT
INTO animals
(
  id,
  name,
  age,
  last_fed,
  species_id
)
VALUES
  (
    animal_id_seq.nextval,
    'Ginger',
    12,
    (sysdate - 5),
    species_id_seq.currval
  );
INSERT
INTO animals
(
  id,
  name,
  age,
  last_fed,
  species_id
)
VALUES
  (
    animal_id_seq.nextval,
    'Brian',
    1,
    (sysdate - (1/24)),
    species_id_seq.currval );
/* cows */
INSERT
INTO species
(
  id,
  common_name,
  latin_name,
  description
)
VALUES
  (
    species_id_seq.nextval,
    'cow',
    'bos taurus',
    'Cattle—colloquially cows—are the most common type of large domesticated ungulates. They are a prominent modern member of the subfamily Bovinae, are the most widespread species of the genus Bos.'
  );
INSERT
INTO animals
(
  id,
  name,
  age,
  last_fed,
  species_id
)
VALUES
  (
    animal_id_seq.nextval,
    'Bessie',
    13,
    (sysdate - (4/24)),
    species_id_seq.currval );
INSERT
INTO animals
(
  id,
  name,
  age,
  last_fed,
  species_id
)
VALUES
  (
    animal_id_seq.nextval,
    'Buttercup',
    3,
    (sysdate - (4/24)),
    species_id_seq.currval );
INSERT
INTO species
(
  id,
  common_name,
  latin_name,
  description
)
VALUES
  (
    species_id_seq.nextval,
    'african elephant',
    'loxodonta',
    'African elephants are elephants of the genus Loxodonta. The genus consists of two extant species: the African bush elephant and the smaller African forest elephant. Loxodonta is one of two existing genera of the family, Elephantidae.'
  );
INSERT
INTO animals
(
  id,
  name,
  age,
  last_fed,
  species_id
)
VALUES
  (
    animal_id_seq.nextval,
    'Stampy',
    32,
    (sysdate - (8/24)),
    species_id_seq.currval );
/* keepers */
INSERT
INTO keepers
(
  id,
  name,
  age,
  salary
)
VALUES
  (
    keeper_id_seq.nextval,
    'Brian Charleston',
    42,
    32000
  );
/* dogs */
INSERT
INTO animals_keepers
(
  keeper_id,
  animal_id
)
VALUES
  (
    keeper_id_seq.currval,
    1
  );
INSERT
INTO animals_keepers
(
  keeper_id,
  animal_id
)
VALUES
  (
    keeper_id_seq.currval,
    2
  );
INSERT
INTO animals_keepers
(
  keeper_id,
  animal_id
)
VALUES
  (
    keeper_id_seq.currval,
    3
  );
INSERT
INTO animals_keepers
(
  keeper_id,
  animal_id
)
VALUES
  (
    keeper_id_seq.currval,
    4
  );
INSERT
INTO animals_keepers
(
  keeper_id,
  animal_id
)
VALUES
  (
    keeper_id_seq.currval,
    5
  );
/* elephant */
INSERT
INTO animals_keepers
(
  keeper_id,
  animal_id
)
VALUES
  (
    keeper_id_seq.currval,
    13
  );
/* Gonzo */
INSERT
INTO animals
(
  id,
  name,
  last_fed,
  species_id
)
VALUES
  (
    animal_id_seq.nextval,
    'Gonzo',
    (sysdate - (8/24)),
    99 );
INSERT
INTO keepers
(
  id,
  name,
  age,
  salary
)
VALUES
  (
    keeper_id_seq.nextval,
    'Derek Fletcher',
    26,
    28000
  );
/* cats */
INSERT
INTO animals_keepers
(
  keeper_id,
  animal_id
)
VALUES
  (
    keeper_id_seq.currval,
    6
  );
INSERT
INTO animals_keepers
(
  keeper_id,
  animal_id
)
VALUES
  (
    keeper_id_seq.currval,
    7
  );
INSERT
INTO animals_keepers
(
  keeper_id,
  animal_id
)
VALUES
  (
    keeper_id_seq.currval,
    8
  );
/* elephant */
INSERT
INTO animals_keepers
(
  keeper_id,
  animal_id
)
VALUES
  (
    keeper_id_seq.currval,
    13
  );
INSERT
INTO keepers
(
  id,
  name,
  age,
  salary
)
VALUES
  (
    keeper_id_seq.nextval,
    'Francine Charleston',
    43,
    34000
  );
/* cows */
INSERT
INTO animals_keepers
(
  keeper_id,
  animal_id
)
VALUES
  (
    keeper_id_seq.currval,
    11
  );
INSERT
INTO animals_keepers
(
  keeper_id,
  animal_id
)
VALUES
  (
    keeper_id_seq.currval,
    12
  );
/* elephant */
INSERT
INTO animals_keepers
(
  keeper_id,
  animal_id
)
VALUES
  (
    keeper_id_seq.currval,
    13
  );
INSERT
INTO keepers
(
  id,
  name,
  age,
  salary
)
VALUES
  (
    keeper_id_seq.nextval,
    'Eileen Dodgson',
    16,
    5200
  );
/* cats */
INSERT
INTO animals_keepers
(
  keeper_id,
  animal_id
)
VALUES
  (
    keeper_id_seq.currval,
    7
  );
INSERT
INTO animals_keepers
(
  keeper_id,
  animal_id
)
VALUES
  (
    keeper_id_seq.currval,
    8
  );
INSERT
INTO animals_keepers
(
  keeper_id,
  animal_id
)
VALUES
  (
    keeper_id_seq.currval,
    10
  );
/* elephant */
INSERT
INTO animals_keepers
(
  keeper_id,
  animal_id
)
VALUES
  (
    keeper_id_seq.currval,
    13
  );