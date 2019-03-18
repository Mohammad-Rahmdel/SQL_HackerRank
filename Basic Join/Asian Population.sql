select sum(CITY.POPULATION)
from CITY,COUNTRY
where CITY.CountryCode = COUNTRY.Code and COUNTRY.CONTINENT='Asia'
