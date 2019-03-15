select concat(Name,'(',left(Occupation,1),')')
from OCCUPATIONS
order by Name ASC;

select concat('There are a total of ', CONVERT(count(Occupation),char),' ', lower(Occupation),'s.') as Q
from OCCUPATIONS
group by Occupation
order by Q;



