-- HackerRank SQL(Contest Leaderboard, https://www.hackerrank.com/challenges/contest-leaderboard/problem?isFullScreen=true)

-- 문제 KeyNote:
-- hacker의 total score란 모든 challenges의 max 점수 대한 합임
-- hacker_id, name, total score를 출력
-- 이 때 total score 가 높은 순으로 출력
-- 같은 total score인 hacker가 둘 이상일 경우 hacker_id순으로 출력
-- total score가 0인 hacker는 제외

-- 1번째 시도. 모든 challenges의 score를 더하는 줄 알았다가 실패
-- 2번째 시도. challenges별 max점수인데.. challenge id가 아닌 submission id로 잘못 이해해서 실패(어휘력..)
select sub.hacker_id, sub.name, sum(sub.score) total_score
from (
    select sm.hacker_id, hc.name, sm.score, row_number() over(partition by sm.submission_id order by sm.score) rn
    from Hackers hc right join submissions sm on hc.hacker_id=sm.hacker_id
) sub
where rn = 1
having sum(sub.score) <> 0
group by sub.hacker_id, sub.name
order by sum(sub.score) desc, hacker_id;

-- 3번째 시도. max함수(aggregation) 활용하여 통과. group by challenge_id 필수.
select sub.hacker_id, sub.name, sum(sub.mx_score) total_score
from (
    select sm.challenge_id, sm.hacker_id, hc.name, max(sm.score) mx_score
    from Hackers hc right join submissions sm on hc.hacker_id=sm.hacker_id
    group by sm.challenge_id, sm.hacker_id, hc.name
) sub
having sum(sub.mx_score) <> 0
group by sub.hacker_id, sub.name
order by sum(sub.mx_score) desc, hacker_id;