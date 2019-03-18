select (CASE WHEN Grade>=8 THEN Name
            ELSE NULL
        END),Grade,Marks
from Students,Grades
where Marks<=Max_Mark and Marks>=Min_Mark
order by Grade DESC, Name, Marks

