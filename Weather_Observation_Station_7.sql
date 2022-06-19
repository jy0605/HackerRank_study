-- HackerRank
-- Weather Observation Station 7
-- https://www.hackerrank.com/challenges/weather-observation-station-7/problem?isFullScreen=true
-- distinct, like
select distinct city
from station
where city like '%a'
or city like '%e'
or city like '%i'
or city like '%o'
or city like '%u';