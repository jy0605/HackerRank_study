-- HackerRank
-- https://www.hackerrank.com/challenges/placements/problem?isFullScreen=true
-- Advanced select
-- -ing
-- 베스트프렌드보다 높은 연봉을 받는 학생들의 이름을 출력
-- 이름은 연봉순으로 정렬
-- 두명이상 같은 연봉을 받지 않음
select name
from Students std inner join Packages pkg on std.id=pkg.id
where std.id in (
    select id
    from Friends fnd inner join Packages pkg on fnd.friend_id=pkg.id
)