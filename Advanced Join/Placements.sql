select sub2.Name
from Packages as p2 inner join (select sub.ID, sub.Friend_ID as f_id,sub.Name, p.Salary
from Packages as p inner join (select *
from Students natural join Friends) as sub
on sub.ID = p.ID) as sub2
on p2.ID = sub2.f_id
where sub2.Salary < p2.Salary
order by p2.Salary

