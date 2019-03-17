Select round(LAT_N,4)
from STATION as s1
where (select count(Lat_N) from STATION as s2 where s2.Lat_N < s1.LAT_N ) = (select count(Lat_N) from STATION as s2 where s2.Lat_N > s1.LAT_N)
