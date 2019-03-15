select distinct CITY from STATION
-- where CITY like 'a%' or 'o%' or 'u%' or 'e%' or 'i%'
where CITY REGEXP '^[aeiou]' 
