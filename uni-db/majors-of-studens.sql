
-- first method
select distinct S.student_id 
, count(S.dept_id)
from majorsln as S
where S.dept_id in (select dept_id
from majorsln
where student_id = S.student_id)
group by 1;

-- second method
select c.id , 
count(j.dept_id) 
from students c
     left join majorsln j on j.student_id = c.id
group by 1;