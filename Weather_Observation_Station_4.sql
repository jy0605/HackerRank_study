-- HackerRank
-- Weather Observation Station 4
-- https://www.hackerrank.com/challenges/weather-observation-station-4/problem?isFullScreen=true&h_r=next-challenge&h_v=zen
-- count, subquery
select cnt_all_city - cnt_dist_city
from (
    select count(city) cnt_all_city
    , count(distinct city) cnt_dist_city
    from station
)