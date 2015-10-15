create or replace view name_cards as
select
  a.name,
  a.age,
  s.common_name species,
  s.latin_name,
  s.description
from animals a
inner join species s on s.id = a.species_id;
