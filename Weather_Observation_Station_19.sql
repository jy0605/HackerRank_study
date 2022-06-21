-- HackerRank
-- Weather Observation Station 19
-- https://www.hackerrank.com/challenges/weather-observation-station-19/problem?isFullScreen=true
-- Euclidean distance ( d = sqrt(power(y2-y1) + power(x2-x1)))
-- sqrt, power(밑,지수)
-- a : min(lat_n)
-- b : max(lat_n)
-- c : min(long_w)
-- d : max(long_w)
-- euclidean distance : (b-a)^2 + (d-c)^2
select round(sqrt(power(max(lat_n) - min(lat_n), 2) + power(max(long_w) - min(long_w), 2)), 4)
from station;