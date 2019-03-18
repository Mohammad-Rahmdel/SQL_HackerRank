select id, age, coins_needed, power
from Wands as w
inner join Wands_Property as wp
on w.code = wp.code
where is_evil = 0 and coins_needed=
(select min(coins_needed) from Wands as w1 inner join Wands_Property as wp1 using(code)
where w1.power = w.power and wp.age=wp1.age)
order by power DESC, age DESC

