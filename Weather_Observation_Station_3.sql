-- HackerRank
-- Weather Observation Station 3
-- https://www.hackerrank.com/challenges/weather-observation-station-3/problem?isFullScreen=true
-- distinct, mod func
select distinct city
from station
where mod(id,2)=0;