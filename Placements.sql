-- HackerRank
-- https://www.hackerrank.com/challenges/placements/problem?isFullScreen=true
-- Advanced Join
-- 아직 푸는중
-- conditions ... 
-- 절친이 본인보다 높은 연봉을 받는 사람의 이름 출력
-- 이름은 절친의 연봉순으로 정렬(아마 적은순인듯)
-- 같은 연봉을 받는 사람이 두 명 이상 존재하지 않는다는 가정
select myinfo.name
from (
    select a.id, a.name, b.salary
    from friends f, students a, packages b
    where f.id=a.id
    and f.id = b.id
) myinfo
, (
    select a.id, a.name, b.salary
    from friends f, students a, packages b
    where f.friend_id=a.id
    and f.friend_id = b.id
) myfriendinfo
where myinfo.salary < myfriendinfo.salary
order by myfriendinfo.salary;