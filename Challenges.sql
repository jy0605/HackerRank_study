-- hacker_id, name, 각 학생에 의해 만들어진 challenges의 총 개수를 각각 출력
-- 총 개수가 많은 순으로 출력
-- 한명 이상의 학생이 같은 개수의 challenges를 갖는다면 hacker_id순으로 출력
-- 한명 이상의 학생이 같은 개수의 challenges를 가지고 그 개수가 생성된 challenges의 최대개수보다 작으면 그 학생은 결과에서 제외

select hacker_id, name, c_cnt, row_number() over(partition by c_cnt order by hacker_id) rn
from (
    select h.hacker_id, h.name, count(c.challenge_id) c_cnt
    from hackers h inner join challenges c on h.hacker_id=c.hacker_id
    group by h.hacker_id, h.name
)
order by c_cnt desc, hacker_id;