-- Hackerrank_Binary_Tree_Nodes (https://www.hackerrank.com/challenges/weather-observation-station-5/problem?isFullScreen=true)
-- SQL(Intermediate), Basic Select
-- 도시 이름 중 가장 짧은 이름과 가장 긴 이름을 출력
-- 이 때 이름의 길이도 출력
-- 이 때 각각의 도시가 두 개 이상일 때는 알파벳상 먼저 오는 도시를 출력
-- Key note => length(city)로 partition by 수행(city명으로 ordering해야함) 후 row num이 1인 것만 가져오기.
select city, len
from (
    select city, length(city) len, row_number() over(partition by length(city) order by city) rn
    from station
)
where rn = 1
and (len = (select min(length(city)) from station)
or len = (select max(length(city)) from station));