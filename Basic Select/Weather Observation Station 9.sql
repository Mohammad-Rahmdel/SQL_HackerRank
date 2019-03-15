select distinct city from station 
where not (left(city,1) in ('a','e','i','o','u'));
