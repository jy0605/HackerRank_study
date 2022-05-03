-- hacker_id, name을 출력함
-- 이 때 하나 이상의 challenge에서 만점을 받은 hacker를 출력함
-- 이 때 만점 받은 challenge의 개수가 높은 순으로 출력함
-- 만점받은 개수가 동일한 해커에 대해서는 hacker_id에 대해 ascending ordering 함

select subquery.hacker_id, subquery.name
from (
    select sub.hacker_id, hac.name, count(*) cnt
    from submissions sub 
    left join hackers hac on sub.hacker_id = hac.hacker_id
    left join challenges chall on sub.challenge_id = chall.challenge_id
    left join difficulty dif on chall.difficulty_level = dif.difficulty_level
    where sub.score = dif.score
    group by sub.hacker_id, hac.name
     ) subquery
where subquery.cnt > 1
order by subquery.cnt desc, subquery.hacker_id asc;