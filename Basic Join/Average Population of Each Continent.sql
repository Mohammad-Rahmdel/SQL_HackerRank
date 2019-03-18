select COUNTRY.Continent, floor(avg(CITY.Population))
from CITY,COUNTRY
where CITY.CountryCode = COUNTRY.Code 
group by COUNTRY.Continent
