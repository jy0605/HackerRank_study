-- Hacker Rank
-- https://www.hackerrank.com/challenges/more-than-75-marks/problem?isFullScreen=true
-- Higher than 75 Marks
-- Basic select
-- substr(string, start index, end index)
-- start index would be - when it start from backside
-- order by substr(string, index)
select name
from students
where marks > 75
order by substr(name, -3), id;