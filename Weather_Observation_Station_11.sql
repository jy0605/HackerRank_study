-- Hacker Rank
-- https://www.hackerrank.com/challenges/weather-observation-station-11/problem?isFullScreen=true
-- lower, (or conditions ..) and (or conditions ..)
-- ing(let's try using regex
select distinct city
from station
where 
    lower(city) not like 'a%'
    and lower(city) not like 'e%'
    and lower(city) not like 'i%'
    and lower(city) not like 'o%'
    and lower(city) not like 'u%'
    and lower(city) not like '%a'
    and lower(city) not like '%e'
    and lower(city) not like '%i'
    and lower(city) not like '%o'
    and lower(city) not like '%u';