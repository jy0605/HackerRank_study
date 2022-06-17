-- HackerRank
-- https://www.hackerrank.com/challenges/weather-observation-station-18/problem?isFullScreen=true
-- Weather Observation Station 18
-- Manhattan distance => |x1 - x2| + |y1 - y2|
-- abs, min, max function, subquery

select round(abs(a-c) + abs (b-d), 4)
from (
    select min(lat_n) as a
    , min(long_w) as b
    , max(lat_n) as c
    , max(long_w) as d
    from station
)