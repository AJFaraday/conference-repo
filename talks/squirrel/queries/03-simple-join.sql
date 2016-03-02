select * from animals
inner join species on species.id = animals.species_id;

select * from animals a
inner join species s on s.id = a.species_id;

select
  a.name,
  a.age,
  s.common_name species,
  s.latin_name,
  s.description
from animals a
inner join species s on s.id = a.species_id;
