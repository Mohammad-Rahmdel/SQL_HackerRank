select contest_id, hacker_id, name, sum(w1) z1, sum(w2) z2, sum(w3) z3, sum(w4) z4 
from Contests natural join
(select contest_id, sum(y1) w1, sum(y2) w2, sum(y3) w3, sum(y4) w4
from Colleges natural join 
(select college_id, sum(x1) y1, sum(x2) y2, sum(x3) y3, sum(x4) y4 
from (select *
    from (
    select challenge_id, sum(total_submissions) as x1, sum(total_accepted_submissions) as x2
    from Submission_Stats
    group by challenge_id) sub1 
    natural join (
    select challenge_id, sum(total_views) as x3, sum(total_unique_views) as x4
    from View_Stats
    group by challenge_id) sub2
      ) sub3
natural join Challenges
group by college_id) sub4
group by contest_id, college_id
) as sub5

group by contest_id, hacker_id, name
having z1<>0 or z2<>0 or z3<>0 or z4<>0  
order by contest_id


