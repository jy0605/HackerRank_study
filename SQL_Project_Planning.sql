-- HackerRank
-- https://www.hackerrank.com/challenges/sql-projects/problem?isFullScreen=true
-- SQL Project Planning
-- End_date목록에 없는 startdate와 start_date목록에 없는 enddate를 출력하되
-- start_date가 앞선 것들만 출력
-- start_date 기준으로 group by 후
-- period gap이 적은 순, startdate순으로 출력한다
-- Advanced join
SELECT Start_Date, min(End_Date)
FROM 
    (SELECT Start_Date 
     FROM Projects 
     WHERE Start_Date NOT IN (SELECT End_Date FROM Projects)) a,
    (SELECT End_Date
     FROM Projects
    WHERE End_Date NOT IN (SELECT Start_Date FROM Projects)) b
WHERE Start_Date < End_Date
group by start_date
ORDER BY (MIN(End_Date) - Start_Date), Start_Date;