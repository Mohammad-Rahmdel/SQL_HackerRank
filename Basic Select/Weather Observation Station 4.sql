select (select count(CITY) from STATION)-(select count(distinct CITY) from STATION) 
