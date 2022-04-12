-- HackerRank Weather-observation-station-20

-- 문제 이해 miss(1)
/*
select * from (
    select * from station
    order by lat_n
    )
where rownum = (select ceil(count(*)/2) from station);
*/

-- 문제 이해 miss(2)
/*
select round((lower_tpl.lat_n + higher_tpl.lat_n)/2, 4) as median
from 
(
    select lat_n from (
    select * from station
    order by lat_n
    )
 where rownum < 2
) lower_tpl,
(select lat_n from (
    select * from station
    order by lat_n desc
    )
 where rownum < 2
) higher_tpl;
*/

-- 중앙값은 주어진 수를 크기순으로 정렬했을 때 가장 가운데에 있는 값임
-- 표본의 개수가 짝수여서 중앙값이 두개가 될 경우 두 값의 평균을 내주어야 한다.
SELECT ROUND(AVG(LAT_N), 4) MEDIAN
  FROM (SELECT LAT_N
             , ROW_NUMBER() OVER(ORDER BY LAT_N) RN
             , COUNT(1) OVER() + 1 CNT
          FROM STATION
       )
 WHERE RN BETWEEN FLOOR(CNT / 2) AND CEIL(CNT / 2)
;

-- Oracle 10g 이상 version에서는 median 함수를 지원한다.
SELECT ROUND(MEDIAN(LAT_N), 4)
  FROM STATION
;