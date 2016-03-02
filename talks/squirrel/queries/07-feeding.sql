/* animals not fed today */
select a.name
from animals a
where a.last_fed < (sysdate - 1)

/* animals with no keeper */
select
  a.*
from animals a
left outer join animals_keepers ak on ak.animal_id = a.id
left outer join keepers k on k.id = ak.keeper_id
where k.name is null;