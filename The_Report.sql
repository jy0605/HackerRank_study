-- Conditions =>
-- Name, Grade, Mark를 출력한다.
-- Grade에 대해 descending ordering
-- 동일 등급을 가진 학생에 대해서는 이름을 알파벳순으로 정렬한다.

-- 등급이 8보다 작으면 학생들 이름을 null로 출력한다.
-- Grade에 대해 descending ordering
-- 동일 등급을 가진 학생에 대해서는 marks에 대해 ascending ordering 한다.

select std.Name, grd.Grade, std.Marks
from (select * from students where marks>=70) std
left join grades grd on std.Marks >= grd.min_mark and std.Marks <= grd.max_mark
order by grd.Grade desc, name asc;

select 'NULL', grd.Grade, std.Marks
from (select * from students where marks<70) std
left join grades grd on std.Marks >= grd.min_mark and std.Marks <= grd.max_mark
order by grd.Grade desc, std.Marks asc;