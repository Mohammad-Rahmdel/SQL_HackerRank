select round(LONG_W,4)
from STATION
where LAT_N<137.2345
order by LAT_N DESC
limit 1;
