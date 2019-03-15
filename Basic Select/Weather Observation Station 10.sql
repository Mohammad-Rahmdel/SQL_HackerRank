select distinct city from station 
where not(right(city,1) in ('a','e','i','o','u'))
