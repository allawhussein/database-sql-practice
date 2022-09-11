-- first method
select	count(distinct student_id)
from enrolled
where student_id in (select student_id
from majorsln
where dept_id = (select id
from departments
where name = 'CS'));
-- second method
select	count(distinct s.student_id)
from    enrolled s
        right join majorsln k on k.student_id = s.student_id
		right join departments j on   j.id = k.dept_id  and  j.name = 'CS';