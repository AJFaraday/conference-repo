create user zoo identified by zoo;
conn zoo/zoo;

create or replace table species (
  id integer(32),
  common_name string(255),
  latin_name string(255),
  description string(4000)
);
create sequence species_id_seq
  start with 1
  increment by 1
  nocache nocycle;

create or replace table animals (
  id integer(32) not null,
  name string(255) not null,
  age integer(32) not null,
  last_fed timestamp,
  species_id integer(32)
);
create sequence animal_id_seq
  start with 1
  increment by 1
  nocache nocycle;

create or replace table keepers (
  id integer(32) not null,
  name string(255) not null,
  age integer(32) not null,
  salary integer(32) not null
);
create sequence keeper_id_seq
  start with 1
  increment by 1
  nocache nocycle;

create or replace table animals_keepers (
  animal_id integer(32),
  keeper_id integer(32)
);


insert all
  /* dogs */
  into species (id, common_name, latin_name, description)
  values (
    species_id_seq.nextval,
    'dog',
    'canis lupus familiaris',
    'The domestic dog is a domesticated canid which has been selectively bred for millennia for various behaviors, sensory capabilities, and physical attributes.'
  )
  into animals (id, name, age, last_fed, species_id)
  values (
    animal_id_seq.nextval, 'Shep', 6, (sysdate - (1/24)), species_id_seq.currval
  )
  into animals (id, name, age, last_fed, species_id)
  values (
    animal_id_seq.nextval, 'Bonnie', 4, (sysdate - (1/24)), species_id_seq.currval
  )
  into animals (id, name, age, last_fed, species_id)
  values (
    animal_id_seq.nextval, 'Rover', 6, (sysdate - (2/24)), species_id_seq.currval
  )
  into animals (id, name, age, last_fed, species_id)
  values (
    animal_id_seq.nextval, 'Fido', 3, (sysdate - (1/24)), species_id_seq.currval
  )
  into animals (id, name, age, last_fed, species_id)
  values (
    animal_id_seq.nextval, 'Buster', 1, (sysdate - (2/24)), species_id_seq.currval
  )

  /* cats */
  into species (id, common_name, latin_name, description)
  values (
    species_id_seq.nextval,
    'cat',
    'felis catus',
    'The domestic cat is a small, usually furry, domesticated, and carnivorous mammal. They are often called housecats when kept as indoor pets or simply cats when there is no need to distinguish them from other felids and felines.'
  )
  into animals (id, name, age, last_fed, species_id)
  values (
    animal_id_seq.nextval, 'Smudge', 2, (sysdate - (1/24)), species_id_seq.currval
  )
  into animals (id, name, age, last_fed, species_id)
  values (
    animal_id_seq.nextval, 'Tiddles', 8, (sysdate - (2/24)), species_id_seq.currval
  )
  into animals (id, name, age, last_fed, species_id)
  values (
    animal_id_seq.nextval, 'Kipper', 3, (sysdate - (1/24)), species_id_seq.currval
  )
  into animals (id, name, age, last_fed, species_id)
  values (
    animal_id_seq.nextval, 'Ginger', 12, (sysdate - 5), species_id_seq.currval
  )
  into animals (id, name, age, last_fed, species_id)
  values (
    animal_id_seq.nextval, 'Brian', 1, (sysdate - (1/24)), species_id_seq.currval
  )

  /* cows */
  into species (id, common_name, latin_name, description)
  values (
    species_id_seq.nextval,
    'cow',
    'bos taurus',
    'Cattle—colloquially cows—are the most common type of large domesticated ungulates. They are a prominent modern member of the subfamily Bovinae, are the most widespread species of the genus Bos.'
  )
  into animals (id, name, age, last_fed, species_id)
  values (
    animal_id_seq.nextval, 'Bessie', 13, (sysdate - (4/24)), species_id_seq.currval
  )
  into animals (id, name, age, last_fed, species_id)
  values (
    animal_id_seq.nextval, 'Buttercup', 3, (sysdate - (4/24)), species_id_seq.currval
  )
  
  into species (id, common_name, latin_name, description)
  values (
    species_id_seq.nextval,
    'african elephant',
    'loxodonta',
    'African elephants are elephants of the genus Loxodonta. The genus consists of two extant species: the African bush elephant and the smaller African forest elephant. Loxodonta is one of two existing genera of the family, Elephantidae.'
  )
  into animals (id, name, age, last_fed, species_id)
  values (
    animal_id_seq.nextval, 'Stampy', 32, (sysdate - (8/24)), species_id_seq.currval
  )
  
  /* keepers */
  into keepers (id, name, age, salary)
  values(
    keeper_id_seq.nextval, 'Brian Charleston', 42, 32000
  )
  /* dogs */
  into animals_keepers(keeper_id, animal_id)
  values (keeper_id_seq.currval, 1)
  into animals_keepers(keeper_id, animal_id)
  values (keeper_id_seq.currval, 2)
  into animals_keepers(keeper_id, animal_id)
  values (keeper_id_seq.currval, 3)
  into animals_keepers(keeper_id, animal_id)
  values (keeper_id_seq.currval, 4)
  into animals_keepers(keeper_id, animal_id)
  values (keeper_id_seq.currval, 5)
  /* elephant */
  into animals_keepers(keeper_id, animal_id)
  values (keeper_id_seq.currval, 13)
  
  into keepers (id, name, age, salary)
  values(
    keeper_id_seq.nextval, 'Derek Fletcher', 26, 28000
  )
  /* cats */
  into animals_keepers(keeper_id, animal_id)
  values (keeper_id_seq.currval, 6)
  into animals_keepers(keeper_id, animal_id)
  values (keeper_id_seq.currval, 7)
  into animals_keepers(keeper_id, animal_id)
  values (keeper_id_seq.currval, 8)
  /* elephant */
  into animals_keepers(keeper_id, animal_id)
  values (keeper_id_seq.currval, 13)

  into keepers (id, name, age, salary)
  values(
    keeper_id_seq.nextval, 'Francine Charleston', 43, 5200
  )
  /* cows */
  into animals_keepers(keeper_id, animal_id)
  values (keeper_id_seq.currval, 11)
  into animals_keepers(keeper_id, animal_id)
  values (keeper_id_seq.currval, 12)
  /* elephant */
  into animals_keepers(keeper_id, animal_id)
  values (keeper_id_seq.currval, 13)


  into keepers (id, name, age, salary)
  values(
    keeper_id_seq.nextval, 'Eileen Dodgson', 16, 5200
  )
  /* cats */
  into animals_keepers(keeper_id, animal_id)
  values (keeper_id_seq.currval, 7)
  into animals_keepers(keeper_id, animal_id)
  values (keeper_id_seq.currval, 8)
  into animals_keepers(keeper_id, animal_id)
  values (keeper_id_seq.currval, 10)
  /* elephant */
  into animals_keepers(keeper_id, animal_id)
  values (keeper_id_seq.currval, 13)

;