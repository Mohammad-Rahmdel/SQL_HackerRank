select (salary*months) as m, count(*)
from Employee
group by 1
order by m DESC
limit 1;
