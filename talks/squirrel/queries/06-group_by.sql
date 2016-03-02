select
  s.common_name,
  count(*) amount,
  min(a.age) min,
  avg(a.age) mean,
  max(a.age) max
from animals a
left outer join species s on s.id = a.species_id
group by s.common_name
order by s.common_name asc;

select
  k.name,
  k.age,
  count(a.id) number_of_animals
from animals a
inner join animals_keepers ak on ak.animal_id = a.id
inner join keepers k on k.id = ak.keeper_id
group by
  k.name,
  k.age
order by age asc;

select
  k.name,
  k.salary,
  count(a.id) number_of_animals
from animals a
inner join animals_keepers ak on ak.animal_id = a.id
inner join keepers k on k.id = ak.keeper_id
group by
  k.name,
  k.salary
order by k.salary asc;