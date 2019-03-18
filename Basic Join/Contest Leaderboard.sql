select hacker_id, name, sum(x) as sc
from (select hacker_id, name, challenge_id, max(score) as x
from Hackers natural join Submissions
group by hacker_id, name, challenge_id) as sub
group by hacker_id, name
having sc <> 0
order by sc DESC, hacker_id
