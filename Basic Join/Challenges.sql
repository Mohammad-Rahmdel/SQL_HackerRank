select h.hacker_id as i, name, count(challenge_id) as f
from Hackers h inner join Challenges c on h.hacker_id=c.hacker_id
group by i,name
having f = (select max(sub.cnt) from (select count(challenge_id) as cnt from Hackers h2 natural join Challenges c2 group by h2.hacker_id,name) as sub) or 
f in (select n
from (
select n ,count(n)
from (
select hacker_id,count(challenge_id) as n
from Hackers natural join Challenges
group by hacker_id
order by hacker_id) as sub2 
group by n
having count(n)=1
) as sub3
)
order by f DESC, i

