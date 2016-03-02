select
a.*,
  k.name
from animals a
left outer join animals_keepers ak on ak.animal_id = a.id
left outer join keepers k on k.id = ak.keeper_id
order by a.name asc;