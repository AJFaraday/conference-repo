select *
from keepers k
inner join animals_keepers ak on ak.keeper_id = k.id
inner join animals a on a.id = ak.animal_id;

select
  k.name keeper,
  a.name animal,
  a.last_fed
from keepers k
inner join animals_keepers ak on ak.keeper_id = k.id
inner join animals a on a.id = ak.animal_id;

select
  k.name keeper,
  a.name animal,
  s.name species,
  a.last_fed
from keepers k
inner join animals_keepers ak on ak.keeper_id = k.id
inner join animals a on a.id = ak.animal_id
inner join species s on s.id = a.species_id;
