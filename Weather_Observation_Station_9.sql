-- HackerRank
-- Weather Observation Station 9
-- https://www.hackerrank.com/challenges/weather-observation-station-9/problem?isFullScreen=true
-- not like, lower
select distinct city
from station
where lower(city) not like 'a%'
and lower(city) not like 'e%'
and lower(city) not like 'i%'
and lower(city) not like 'o%'
and lower(city) not like 'u%';