-- HackerRank
-- Weather Observation Station 8
-- https://www.hackerrank.com/challenges/weather-observation-station-8/problem?isFullScreen=true
-- REGEXP (ing)
SELECT DISTINCT city
FROM station
WHERE REGEXP_LIKE(city, '[aeiou]$') and REGEXP_LIKE(city, '^[aeiou]');