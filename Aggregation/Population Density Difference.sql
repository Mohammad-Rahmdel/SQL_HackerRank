select (select max(POPULATION)
from CITY)-(select min(POPULATION)
from CITY)

