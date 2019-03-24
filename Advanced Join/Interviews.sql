select t1.contest_id, t1.hacker_id, t1.name, sum(x3) y1, sum(x4) y2, sum(x1) y3, sum(x2) y4
from contests as t1 
inner join colleges as t2 on t1.contest_id = t2.contest_id 
inner join challenges as t3 on  t2.college_id = t3.college_id 
left join
(select challenge_id, sum(total_views) as x1, sum(total_unique_views) as x2
from view_stats group by challenge_id) sub1 on t3.challenge_id = sub1.challenge_id 
left join
(select challenge_id, sum(total_submissions) as x3, sum(total_accepted_submissions) as x4
 from submission_stats group by challenge_id) sub3 on t3.challenge_id = sub3.challenge_id
    group by t1.contest_id, t1.hacker_id, t1.name
        having (y1+y2+y3+y4) <> 0
            order by t1.contest_id;
