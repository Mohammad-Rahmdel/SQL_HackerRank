select CITY.NAME
from CITY,COUNTRY
where CITY.CountryCode = COUNTRY.Code and COUNTRY.CONTINENT='Africa'
