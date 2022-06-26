-- Hacker Rank
-- https://www.hackerrank.com/challenges/what-type-of-triangle/problem?isFullScreen=true
-- Type of Triangle
-- Advanced select
select case when a=b and b=c then 'Equilateral'
when a+b<=c or a+c<=b or b+c<=a then 'Not A Triangle'
when a=b or b=c or a=c then 'Isosceles'
else 'Scalene' end
from TRIANGLES;